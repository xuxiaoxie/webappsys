<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
        <script src="${ctx}/js/plugins/jquery/jquery-1.7.2.min.js"></script>
        <sitemesh:head />
	</head>
<body>
		<!-- 隐藏 -->
		<div id="header">
			<h1><a href="./dashboard.html">管理平台</a></h1>		
		</div>
		<!-- 顶部 搜索框 -->
		<div id="search">
			<input type="text" placeholder="搜索标题..." /><button type="submit" class="tip-right" title="Search">
			<i class="icon-search icon-white"></i></button>
		</div>
		<!-- 顶部 右侧系统提醒 -->
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                
                <li class="btn btn-inverse dropdown" id="menu-messages">
                <a href="javascript:void(0);" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle">
                	<i class="icon icon-user"></i> <span class="text">用户</span>
               	 <b class="caret"></b>
                </a>
                    <ul class="dropdown-menu">
                        <li><a class="sAdd" title="" href="change-pwd.html">修改密码</a></li>
                    </ul>
                </li>
                <li class="btn btn-inverse"><a title="" href="javascript:void(0);"><i class="icon icon-cog"></i> 
                <span class="text">设置</span></a></li>
                <li class="btn btn-inverse">
                	<a title="" href="login.html">
                	<i class="icon icon-share-alt"></i>
                	 <span class="text">退出</span></a>
                 </li>
            </ul>
        </div>
         
        <!-- 左侧菜单 -->    
		<div id="sidebar">
			<a href="javascript:void(0);" class="visible-phone"><i class="icon icon-home"></i>主页</a>
			<ul>
				<li class="submenu"><a href="index.html"><i class="icon icon-home"></i> <span>主页</span></a></li>
				
				<li class="submenu active">
					<a href="javascript:void(0);"><i class="icon icon-envelope"></i> <span>基础设置</span></a>
					<ul>
						<li><a href="#">功能管理</a></li>
						<li><a href="wechart-index.html">关注回复</a></li>
						<li><a hraef="#">微信-文本回复</a></li>
						<li><a href="#">微信-图文回复</a></li>
						<li><a href="#">微信-多图文回复</a></li>
						<li><a href="#">微信-语音回复</a></li>
						<li><a href="#">微信-群发消息</a></li>
						<li><a href="#">微信-LBS回复</a></li>
						<li><a href="#">微信-自定义菜单</a></li>
						<li><a href="#">微信-无答案回复</a></li>
					</ul>
				</li>

				<li class="submenu">
					<a href="javascript:void(0);"><i class="icon icon-envelope"></i> <span>会员卡</span></a>
					<ul>
						<li><a href="form-common.html">会员卡列表</a></li>
					</ul>
				</li>
				
				<li class="submenu">
					<a href="javascript:void(0);"><i class="icon icon-shopping-cart"></i> <span>微网站</span></a>
					<ul>
						<li><a href="#">首页回复配置</a></li>
					</ul>
				</li>

				<li class="submenu">
					<a href="javascript:void(0);"><i class="icon icon-shopping-cart"></i> <span>微活动</span></a>
					<ul>
						<li><a href="#">幸运大转盘</a></li>
						<li><a href="#">优惠券</a></li>
						<li><a href="#">刮刮卡</a></li>
						<li><a href="#">砸金蛋</a></li>
					</ul>
				</li>

				
				<li class="submenu">
					<a href="javascript:void(0);"><i class="icon icon-envelope"></i> <span>微互动</span></a>
					<ul>
						<li><a href="form-common.html">微论坛</a></li>
					</ul>
				</li>

			</ul>
		
		</div>
		
		<!--===================================================样式切换（Begin）==========================-->
		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>切换样式:</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div>
		<!--===================================================样式切换（End）==========================-->
		
		<sitemesh:body />
        
        
        	 <!-- footer begin -->	
				 <div class="row-fluid">
					<div id="footer" class="span12">
						2014 &copy; 版权所有.
					</div>
				</div>
				<!-- footer end -->	
			</div>
		</div>
		
	 <!-- JS -->
		<script src="${ctx}/js/plugins/jquery/jquery-1.7.2.min.js"></script>
		<script src="${ctx}/js/plugins/bootstrap-2.2.1/js/bootstrap.min.js"></script>
		<script src="${ctx}/js/plugins/bootstrap-2.2.1/js/excanvas.min.js"></script>
        <script src="${ctx}/js/plugins/bootstrap-2.2.1/js/fullcalendar.min.js"></script>
        <script src="${ctx}/js/plugins/bootstrap-2.2.1/js/jquery-ui/jquery.ui.custom.js"></script>
        <script src="${ctx}/js/plugins/bootstrap-2.2.1/js/jquery-ui/jquery.flot.min.js"></script>
        <script src="${ctx}/js/plugins/bootstrap-2.2.1/js/jquery-ui/jquery.flot.resize.min.js"></script>
        <script src="${ctx}/js/plugins/bootstrap-2.2.1/js/jquery-ui/jquery.peity.min.js"></script>
		<script src="${ctx}/js/unicorn.js"></script>
        <script src="${ctx}/js/unicorn.dashboard.js"></script>
	</body>
</html>