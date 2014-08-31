<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>微信后台-首页</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- CSS -->
		<link rel="stylesheet" href="${ctx}/js/plugins/bootstrap-2.2.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${ctx}/js/plugins/bootstrap-2.2.1/css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="${ctx}/js/plugins/bootstrap-2.2.1/css/fullcalendar.css" />	
		<link rel="stylesheet" href="${ctx}/resources/css/unicorn.main.css" />
		<link rel="stylesheet" href="${ctx}/resources/css/unicorn.grey.css" class="skin-color" />
		<link rel="stylesheet" href="${ctx}/resources/css/uniform.css" />
		<link rel="stylesheet" href="${ctx}/resources/css/select2.css" />
		<!-- Page CSS -->
        <style type="text/css">
        	.left-hander-ico{
        		background-color: #da8c8d;
        	}
        </style>
	</head>

<body>
		<!--===================================================content（内容Begin）==========================-->
		<div id="content">
			<div id="content-header">
				<h1>多账户管理平台</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="API接口文档"><i class="icon-file"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="javascript:void(0);" title="修改密码" class="tip-bottom"><i class="icon-home"></i> 用户</a>
				<a href="javascript:void(0);" class="current">修改密码</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					<div class="widget-box">
								<div class="widget-title">
									<span class="icon">
										<i class="icon-align-justify"></i>									
									</span>
									<h5>修改密码</h5>
								</div>
								<div class="widget-content nopadding">
									<form class="form-horizontal" method="post" action="#" name="password_validate" id="password_validate" novalidate="novalidate" />
										<div class="control-group">
											<label class="control-label">新密码</label>
											<div class="controls">
												<input type="password" name="pwd" id="pwd" />
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">再次输入</label>
											<div class="controls">
												<input type="password" name="pwd2" id="pwd2" />
											</div>
										</div>
										<div class="form-actions">
											<input type="submit" value="提交" class="btn btn-primary" />
										</div>
									</form>
								</div>
							</div>
						
					</div>	
				</div>
        
	</body>
</html>
