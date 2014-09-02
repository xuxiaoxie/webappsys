<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>微信公众号-首页</title>
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
		<!--===================================================content（内容Begin）==========================-->
		<div id="content">
			<div id="content-header">
				<h1>留夫鸭</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="API接口文档"><i class="icon-file"></i></a>
				</div>
			</div>
	
			<div id="breadcrumb">
				<a href="javascript:void(0);" title="基础设置" class="tip-bottom"><i class="icon-home"></i> 基础设置</a>
				<a href="javascript:void(0);" class="current">关注回复</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					<ul class="stat-boxes">
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
					<div class="span8">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>
								</span>
								<h5>关注时自动回复内容</h5>
							</div>
							<div class="widget-content nopadding">
								<form action="#" method="get" class="form-horizontal" />
									<textarea autofocus wrap="soft" style="width:712px; height:500px; margin:0px"></textarea>
									
									<div>
										<p> <input name="home" type="checkbox" checked="checked" value="1"   />若是想关注回复多图，此项必须沟选 </p>
										<p>
										关键词：<input type="input" style="width:100px;" class="px" id="keyword" value="首页" name="keyword" style="width:500px" ><br/>例：填写"功能",系统会检索包含最近发布的9条信息，若想关注回复回复首页,此项请填写 首页<br/>
									</div>

									<div class="form-actions">
										<button type="submit" class="btn btn-primary">保存</button>

										<button class="btn btn-warning"><i class="icon-eye-open"></i> 切换到图文模式</button>
									</div>
								</form>
							</div>
						</div>	
					</div>
					<div class="span4">
						<h4>参考范例：</h4>
						1.附近周边信息查询lbs<br/>
						2.音乐查询　音乐＋音乐名  例：音乐爱你一万年<br/>
						3.天气查询　城市名＋天气　例上海天气<br/>
						4.手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912<br/>
						5.身份证查询　身份证＋号码　　例：身份证342423198803015568<br/>
						6.公交查询　公交＋城市＋公交编号　例：上海公交774<br/>
						7.火车查询　火车＋城市＋目的地　例火车上海南京<br/>
						8.翻译 支持 及时翻译，语音翻译　翻译＋关键词 例：翻译你好<br/>
						9.彩票查询　彩票＋彩票名  例如:彩票双色球<br/>
						10.周公解梦　梦见+关键词　例如:梦见父母<br/>
						11.陪聊　直接输入聊天关键词即可<br/>
						12.聊天　直接输入聊天关键词即可<br/>
						13.藏头诗 藏头诗+关键词　例：藏头诗我爱你　<br/>
						14.笑话　直接发送笑话<br/>
						15.糗事　直接发送糗事<br/>
						16.快递 快递＋快递名＋快递号　例：快递顺丰117215889174<br/>
						17.健康指数查询　健康＋高，＋重　例：健康170,65<br/>
						18.朗读 朗读＋关键词　例：朗读微信营销专家多用户营销系统<br/>
						19.计算器 计算器使用方法　例：计算50-50　，计算100*100<br/>
						20.输入价格了解微信营销专家平台系统的价格<br/>
						21.输入服务了解微信营销专家平台系统的售后服务<br/>
						23.输入抽奖，即可玩幸运大抽奖<br/>
						2４.输入会员即可填写会员资料<br/>
						25.更多功能请回复帮助，或者help<br/>
					</div>
				</div>
				 
	</body>
</html>
