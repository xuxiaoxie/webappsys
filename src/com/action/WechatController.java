package com.action;

import javax.servlet.http.HttpServletRequest;

import org.nutz.dao.impl.NutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WechatController extends BaseController {

	@Autowired
	private NutDao dao;

	@RequestMapping("/{wechatNo}/index.html")
	public String preAddWechat(@PathVariable String wechatNo,
			HttpServletRequest request) {
		
		
		
		request.setAttribute("wechatNo",wechatNo);
		return "wechat/index";
	}
}
