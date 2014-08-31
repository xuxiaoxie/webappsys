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
				<a href="javascript:void(0);" title="添加公众号" class="tip-bottom"><i class="icon-home"></i> 我的公众号</a>
				<a href="javascript:void(0);" class="current">添加公众号</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					<div class="widget-box">
								<div class="widget-title">
									<span class="icon">
										<i class="icon-align-justify"></i>									
									</span>
									<h5>添加微信公众号</h5>
								</div>
								<div class="widget-content nopadding">
								    <!-- 这里需要自己定义名称 -->
									<form class="form-horizontal" method="post" action="#" name="password_validate" id="password_validate" novalidate="novalidate" />
										<div class="control-group">
										<label class="control-label">公众号名称<span style="color:red;">*</span></label>
										<div class="controls">
											<input type="text" name="publicName" placeholder="必须填写..." />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">公众号原始id<span style="color:red;">*</span></label>
										<div class="controls">
											<input type="text" name="originalId" placeholder="必须填写..." />
											<span class="help-block">微信后台公众号设置中查询，如 gh_87878792a3</span>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">微信号<span style="color:red;">*</span></label>
										<div class="controls">
											<input type="text"  name="wechatNo" placeholder="必须填写..." />
											<span class="help-block">微信后台公众号设置中查询，如 wandaguangchang</span>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">AppID</label>
										<div class="controls">
											<input type="text" name="appId" placeholder="选择填写..." />
											<span class="help-block">用于自定义微信菜单</span>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">AppSecret</label>
										<div class="controls">
											<input type="text" name="appSecret" placeholder="选择填写..." />
											<span class="help-block">用于自定义微信菜单</span>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">微信号类型<span style="color:red;">*</span></label>
										<div class="controls">
											<select name="accountType">
												<option value="1"/>订阅号
												<option value="2"/>服务号
												<option value="3"/>认证服务号
											</select>
											<span class="help-block">认证服务号指每年向微信官方交300元认证费的公众号</span>
										</div>
									</div>
										<div class="form-actions">
											<input type="button" value="保存" class="btn btn-primary" id="addWechat" />
										</div>
									</form>
								</div>
							</div>
					</div>	
				</div>
	<script type="text/javascript">
	$(function(){
		$("#addWechat").click(function(){
			$.post("addWechat.html",
					$("form").serialize(),
					function(data){
					if(data==1){
						alert("保存成功！");
					}
			})
		})
	})
	</script>			
	</body>
</html>
