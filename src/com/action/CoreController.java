package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.dao.Cnd;
import org.nutz.dao.impl.NutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Account;
import com.util.SignUtil;

@Controller
public class CoreController extends BaseController {

	@Autowired
	private NutDao dao;
	
	@RequestMapping("/{wechatNo}/core.html")
	public void preAddWechat(HttpServletRequest request,
			HttpServletResponse response, @PathVariable String wechatNo) throws IOException {

		String method = request.getMethod();
		if ("GET".equals(method)) {
			doGet(request, response, wechatNo);
		} else {
			doPost(request, response, wechatNo);
		}
	}

	private void doGet(HttpServletRequest request,
			HttpServletResponse response, String wechatNo) throws IOException {
		List<Account> list = dao.query(Account.class,
				Cnd.where("wechatNo", "=", wechatNo));
		Account account = list.get(0);
		// 微信加密签名
		String signature = request.getParameter("signature");
		// 时间戳
		String timestamp = request.getParameter("timestamp");
		// 随机数
		String nonce = request.getParameter("nonce");
		// 随机字符串
		String echostr = request.getParameter("echostr");
		PrintWriter out = response.getWriter();
		// 请求校验，若校验成功则原样返回echostr，表示接入成功，否则接入失败
		if (SignUtil.checkSignature(signature, timestamp, nonce,
				account.getWechatNo())) {
			out.print(echostr);
		}
		out.close();
		out = null;
	}

	private void doPost(HttpServletRequest request,
			HttpServletResponse response, String wechatNo) throws IOException {
		// 将请求、响应的编码均设置为UTF-8（防止中文乱码）
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		List<Account> list = dao.query(Account.class,
				Cnd.where("wechatNo", "=", "wechatNo"));
		Account account = list.get(0);

		// 接收参数微信加密签名、 时间戳、随机数
		String signature = request.getParameter("signature");
		String timestamp = request.getParameter("timestamp");
		String nonce = request.getParameter("nonce");

		PrintWriter out = response.getWriter();
		// 请求校验
		if (SignUtil.checkSignature(signature, timestamp, nonce,account.getToken())) {
			// 调用核心服务类接收处理请求
//			String respXml = CoreService.processRequest(request);
//			out.print(respXml);
		}
		out.close();
		out = null;
	}
}
