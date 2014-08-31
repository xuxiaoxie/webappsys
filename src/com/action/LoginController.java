package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.nutz.dao.Cnd;
import org.nutz.dao.impl.NutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Users;

@Controller
public class LoginController extends BaseController {
	
	@Autowired
	private NutDao dao;
	
	/**
	 * 登录
	 * 
	 * @param users
	 * @param request
	 * @return
	 */
	@RequestMapping("/login.html")
	public  String  login(Users users,HttpServletRequest request){
		Cnd condition = Cnd.where("user_name", "=", users.getUserName())
				.and("pass_word","=",users.getPassword());
		List<Users> list= dao.query(Users.class, condition);
	    if(list.size()==1){
	    	request.getSession().setAttribute("LoginUser", list.get(0));
	    	return "redirect:/home.html";
	    }else{
	    	return "redirect:/";
	    }
	}
	
	/**
	 * 退出
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/logout.html")
	public  String  logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:/";
	}
     /**
      * 主页
      * @return
      */
	@RequestMapping("/home.html")
	public String home(){

		return "home";
	}
	
	/**
	 * 修改密码
	 * @return
	 */
	@RequestMapping("/changePW.html")
	public String changePW(){
		
		return "changePW";
	}
}
