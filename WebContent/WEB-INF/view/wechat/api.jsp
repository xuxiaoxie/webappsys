<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<!-- Page CSS -->
        <style type="text/css">
        	.left-hander-ico{
        		background-color: #da8c8d;
        	}
        </style>
	</head>
<body>
		<div id="content">
			<div id="content-header">
				<h1>多账户管理平台</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="API接口文档"><i class="icon-file"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="javascript:void(0);" title="返回主页" class="tip-bottom"><i class="icon-home"></i> 主页</a>
				<a href="javascript:void(0);" class="current">公众号列表</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<!-- table begin -->
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
								<h5>公众号API</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<tbody>
									    <tr>
											<td>API路径</td>
											<td>http://aaa.liufuya.com/webappsys/${wechatNo}/core.html</td>
										</tr>
									    <tr>
											<td>token</td>
											<td>${wechatNo}</td>
										</tr>
									</tbody>
								</table>							
							</div>
						</div><!-- end widget-box -->
						<!-- table end -->
					</div>
				</div>
        
	</body>
</html>