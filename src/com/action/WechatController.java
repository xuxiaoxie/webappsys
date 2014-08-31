package com.action;

import org.nutz.dao.impl.NutDao;
import org.nutz.json.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.entity.Account;

@Controller
@RequestMapping("/wechat")
public class WechatController extends BaseController {
	
	@Autowired
	private NutDao dao;
	
	@RequestMapping("/preAddWechat.html")
	public String preAddWechat(){
		
		return "addWechat";
	}
	
	@RequestMapping("/addWechat.html")
	@ResponseBody
	public String  addWechat(Account account){
		dao.insert(account);
		return "1";
	}
}
