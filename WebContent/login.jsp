<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <title>微信后台登录</title>
		<meta charset="UTF-8" />
       	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- CSS -->
		<link rel="stylesheet" href="js/plugins/bootstrap-2.2.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="js/plugins/bootstrap-2.2.1/css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="resources/css/unicorn.login.css" class="skin-color" />

        <!-- JS -->	
		<script src="js/plugins/bootstrap-2.2.1/js/jquery-1.7.2.min.js"></script>  
        <script src="js/unicorn.login.js"></script> 

    	<style type="text/css">
    		.form-line-split{
    			/*padding 上,右，下，左边*/
    			padding: 10px 115px 15px;
    			width:auto;
    			margin-top: 100px;
    		 	height:60px;
    			background-color: #f5f5f5;
    		  	border-top: 1px solid #e5e5e5; 
    		}
    	</style>
    </head>
    <body>
        <!-- 215*31 背景透明的图片，后面更换 -->
        <div id="logo" >
            <img src="resources/img/logo.png" alt="" />
        </div>
        
        
        <div id="loginbox">  
                  
            <form id="loginform" class="form-vertical" action="javascript:void(0)" />
				<h3>欢迎您登录系统</h3>
                
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span><input type="text" placeholder="用户名" />
                        </div>
                    </div>
                </div>
                
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="密码" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on" style="float: left;margin-left: 76px;"><i class="icon-repeat" ></i></span>
                           	<input type="text" placeholder="验证码" style="width: 80px;float: left;"/>
                        </div>
                         <span >  <a href="javascript:void(0);" >换一张</a></span>
                    </div>
                </div>
               
               <div class="control-group">
                    <div class="controls" style="margin-top: 21px;">
                       	<input type="checkbox" />
                   		<a href="#">记住帐号</a>
                   			&nbsp;&nbsp;&nbsp;&nbsp;
                   		<a href="#" class="flip-link" id="to-recover">忘记密码</a>
                    </div>
                </div>
                
                <div class="form-actions">
                    <span class="pull-center"><input type="reset" class="btn btn-info" style="width: 112px;" value="重置" /></span>
                  	&nbsp;&nbsp;&nbsp;  
                    <span class="pull-center"><input type="submit" class="btn btn-info" style="width: 112px;" value="登录" /></span>
                </div>
                	
            </form>
            
            
            <form id="recoverform" action="javascript:void(0);" class="form-vertical"/>
				<p>请输入您的邮箱，我们会把密码修改路径发送到给您.</p>
				<div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-envelope"></i></span><input type="text" placeholder="邮箱地址" />
                        </div>
                    </div>
                </div>
                <div class="form-line-split">
                    <span class="pull-left">
                   		 <a href="javascript:void(0);" class="flip-link" id="to-login">
                   		 <input type="button" class="btn btn-info" value="&lt;返回"/></a>
                    </span>
                    <span class="pull-right"><input type="submit" class="btn btn-info" value="确定" /></span>
                </div>
            </form>
        </div>
		</body>
</html>
