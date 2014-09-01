package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.entity.Users;

public class LoginAnnotationInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String ctx = request.getContextPath();
		// 需要登录
		String requestURL = request.getServletPath();
		if (request.getQueryString() != null
				&& !"".equals(request.getQueryString())) {
			requestURL = requestURL + "?" + request.getQueryString();
		}
		if(requestURL.startsWith("/login.html")||requestURL.startsWith("/login.jsp")){
			return true;
		}else{
			HttpSession session = request.getSession();
			Users loginUser = (Users) session.getAttribute("loginUser");
			// 取得session中的用户信息, 以便判断是否登录了系统
			if (null == loginUser) {
				response.sendRedirect(ctx + "/login.jsp");
				return false;
			}
		}
		return true;
	}
}
