<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
        <sitemesh:head />
	</head>
<body>
		<!-- 隐藏 -->
		<div id="header">
			<h1><a href="/home.html">管理平台</a></h1>		
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
                        <li><a class="sAdd" title="" href="${ctx}/changePW.html">修改密码</a></li>
                    </ul>
                </li>
                <li class="btn btn-inverse"><a title="" href="javascript:void(0);"><i class="icon icon-cog"></i> 
                <span class="text">设置</span></a></li>
                <li class="btn btn-inverse">
                	<a title="" href="${ctx}/">
                	<i class="icon icon-share-alt"></i>
                	 <span class="text">退出</span></a>
                 </li>
            </ul>
        </div>
           
           
         
        <!-- 左侧菜单 -->    
		<div id="sidebar">
			<a href="javascript:void(0);" class="visible-phone"><i class="icon icon-home"></i>主页</a>
			<ul>
				<li class="active"><a href="${ctx}/home.html"><i class="icon icon-home"></i> <span>公众号列表</span></a></li>
				
				<li class="submenu">
					<a href="javascript:void(0);"><i class="icon icon-envelope"></i> <span>我的公众号</span> </a>
					<ul>
						<li><a href="${ctx}/wechat/preAddWechat.html">添加公众号</a></li>
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
        <script src="${ctx}/js/plugins/bootstrap-2.2.1/js/jquery-ui/jquery.uniform.js"></script>
        <script src="${ctx}/js/plugins/bootstrap-2.2.1/js/jquery-ui/jquery.validate.js"></script>
          
	
		<script src="${ctx}/js/unicorn.js"></script>
        <script src="${ctx}/js/unicorn.dashboard.js"></script>
        <script src="${ctx}/js/select2.min.js"></script>
        <script src="${ctx}/js/unicorn.form_validation.js"></script>
	</body>
</html>