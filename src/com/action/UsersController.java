package com.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.time.DateUtils;
import org.nutz.dao.Cnd;
import org.nutz.dao.impl.NutDao;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Account;
import com.entity.Users;

@Controller
@RequestMapping("/users")
public class UsersController extends BaseController {
	
	@Autowired
	private NutDao dao;
	
	@RequestMapping("/addWechat.html")
	public String preAddWechat(){
		
		return "addWechat";
	}
	
	@RequestMapping("/editWechat.html")
	public String preEditWechat(String id,HttpServletRequest request){
		List<Account> list=dao.query(Account.class, Cnd.where("id", "=", id));
		request.setAttribute("account", list.get(0));
		return "addWechat";
	}
	
	@RequestMapping("/saveWechat.html")
	@ResponseBody
	public String  addWechat(Account account,HttpServletRequest request){
		if(account.getId()==null){
			Users loginUser=(Users) request.getSession().getAttribute("loginUser");
			account.setUserId(loginUser.getId());
			Date date=new Date();
			//设置创建时间和过期时间
			account.setCreateDate(date);
			account.setExpireDate(DateUtils.addYears(date, 1));
			dao.insert(account);
		}else{
			List<Account> list=dao.query(Account.class,Cnd.where("id", "=", account.getId()));
			Account a=list.get(0);
			a.setPublicName(account.getPublicName());
			a.setAppId(account.getAppId());
			a.setAppSecret(account.getAppSecret());
			a.setOriginalId(account.getOriginalId());
			a.setWechatNo(account.getWechatNo());
			a.setAccountType(account.getAccountType());
			dao.update(a);
		}
		return "1";
	}
}
