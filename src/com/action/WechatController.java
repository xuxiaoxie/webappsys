package com.action;

import org.nutz.dao.impl.NutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wechat")
public class WechatController extends BaseController {
	
	@Autowired
	private NutDao dao;
	
	@RequestMapping("/preAddWechat.html")
	public String preAddWechat(){
		
		return "addWechat";
	}
}
