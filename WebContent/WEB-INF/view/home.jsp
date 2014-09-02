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
		<link rel="stylesheet" href="js/plugins/bootstrap-2.2.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="js/plugins/bootstrap-2.2.1/css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="js/plugins/bootstrap-2.2.1/css/fullcalendar.css" />	
		<link rel="stylesheet" href="resources/css/unicorn.main.css" />
		<link rel="stylesheet" href="resources/css/unicorn.grey.css" class="skin-color" />
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
					<div class="span12 center" style="text-align: center;">					
						<ul class="stat-boxes">
							<li>
								<div class="left peity_bar_good"><span>2,4,9,7,12,10,12</span>+20%</div>
								<div class="right">
									<strong>36094</strong>
									关注人数
								</div>
							</li>
							<li>
								<div class="left peity_bar_neutral"><span>20,15,18,14,10,9,9,9</span>0%</div>
								<div class="right">
									<strong>1433</strong>
									取消关注数
								</div>
							</li>
							
							<li>
								<div class="left peity_line_good"><span>12,6,9,23,14,10,17</span>+70%</div>
								<div class="right">
									<strong>8650</strong>
									总请求数
								</div>
							</li>
						</ul>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span12">
						<!-- table begin -->
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
								<h5>公众号列表</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>公众号名称</th>
											<th>创建时间/到期时间</th>
											<th>已定义/上限</th>
											<th>用户请求数</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${list}" var="account">
									    <tr>
											<td><a href="${ctx}/${account.wechatNo}/index.html">${account.publicName}</a></td>
											<td>创建时间:<fmt:formatDate value="${account.createDate}" type="date" dateStyle="default" /><br/>
											到期时间:<fmt:formatDate value="${account.expireDate}" type="date" dateStyle="default" /></td>
											<td>图文:200/200000</td>
											<td>总请求数:230<br/>本月请求数:200000</td>
											<td><a href="${ctx}/users/editWechat.html?id=${account.id}">编辑</a>
											    <a href="###">删除</a>
											    <a href="###">功能管理</a>  </td>
										</tr>
									</c:forEach>
									</tbody>
								</table>							
							</div>
						</div><!-- end widget-box -->
						<!-- table end -->
					</div>
				</div>
        
	</body>
</html>