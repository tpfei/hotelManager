<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html>
<head>
<title>订票</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Paix Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="bookcss/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
				
<!--start-smoth-scrolling-->	$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
</head>
<body>

	<!-- script-for-menu -->
		<script>
			$("span.menu").click(function(){
				$(" ul.navig").slideToggle("slow" , function(){
				});
			});
		</script>
	<!-- script-for-menu -->
	<!--start-banner-->
	<div class="banner" style="height:850px">
		<div class="container">
			<div class="banner-top">
				<h1>房间预订</h1>
				<div class="banner-bottom">
				<form id="book" name="book" method="post" action="saveticket.action">
   					<div class="bnr-one">
						<div class="bnr-left">
							<p>入住日期</p>
						</div>
						<div class="bnr-right">
							<input class="date" id="datepicker" type="text" name="ticket.rzrq" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}" >
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bnr-one">
						<div class="bnr-left">
							<p>退房日期</p>
						</div>
						<div class="bnr-right">
							<input class="date" id="datepicker1" type="text" name="ticket.tfrq" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}" >
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bnr-one">
						<div class="bnr-left">
							<p>姓名</p>
						</div>
						<div class="bnr-right">
							<input type="text" name="ticket.xingming">
						</div>
						<div class="clearfix"></div>
					</div>

  					<div class="bnr-one">
						<div class="bnr-left">
							<p>人数</p>
						</div>
						<div class="bnr-right">
							<select name="ticket.amount">
								<option  class="rm" >1</option>
								<option  class="rm" >2</option>
								<option  class="rm" >3</option>
								<option  class="rm" >4</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<%-- <c:forEach items="${list}" varStatus="i" var="item" ></c:forEach> --%>
					
					<div class="bnr-one">
						<div class="bnr-left">
							<p>房间类型</p>
						</div>
						<div class="bnr-right">
							<select name="ticket.kflx">
							<s:iterator value="#request.list" id="d" status="b">
								<option >${d.kflx}</option>
							</s:iterator>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>	
					
					<div class="bnr-one">
						<div class="bnr-left">
							<p>价格</p>
						</div>
						<div class="bnr-right">
							<select name="ticket.cost">
							<s:iterator value="#request.list" id="d" status="b">
								<option >${d.cost}</option>
							</s:iterator>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bnr-one">
						<div class="bnr-left">
							<p>房间号</p>
						</div>
						<div class="bnr-right">
							<select name="ticket.roomnum">
							<s:iterator value="#request.list" id="d" status="b">
								<option  class="rm" >${d.fjh}</option>
							</s:iterator>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="bnr-one">
						<div class="bnr-left">
							<p>状态</p>
						</div>
						<div class="bnr-right">
							<input type="text" readonly="readonly" name="ticket.state" value="预订">
						</div>
						<div class="clearfix"></div>
					</div>
														
					<div class="bnr-one">
						<div class="bnr-left">
							<p>用户ID</p>
						</div>
						<div class="bnr-right">
							<input type="text" readonly="readonly" name="ticket.u_id" value="<%=session.getAttribute("userid")%>">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bnr-btn">						
							<input type="submit" value="预订">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--end-banner-->
	<!---start-date-piker---->
		
		<script src="js/jquery-ui.js"></script>
			<script>
				$(function() {
				$( "#datepicker,#datepicker1" ).datepicker();
				});
			</script>
	<!---/End-date-piker---->
	<!---start-why-->
	<div class="why" id="about">
		<div class="container">
			<div class="why-top heading">
				<h3>为什么选择我们?</h3>
				<p>香格里拉大酒店位于五羊新城和珠江新城CBD商圈交汇处，地处越秀区繁华商务地段，毗邻广州国际金融中心、琶洲国际会展中心，是上海美豪酒店集团倾心打造的中高端城市度假酒店。</p>
			</div>
			<div class="why-bottom">
				<div class="col-md-4 why-left">
					<span class="w-one"></span>
					<p> 健康营养早餐、特色简餐和精致茶点，丰富宾客在广州的舌尖记忆。美豪丽致酒店，商务出行、休闲度假之理想的“家”。</p>
				</div>
				<div class="col-md-4 why-left">
					<span class="w-two"></span>
					<p> 健康营养早餐、特色简餐和精致茶点，丰富宾客在广州的舌尖记忆。美豪丽致酒店，商务出行、休闲度假之理想的“家”。</p>
				</div>
				<div class="col-md-4 why-left">
					<span class="w-tre"></span>
					<p> 健康营养早餐、特色简餐和精致茶点，丰富宾客在广州的舌尖记忆。美豪丽致酒店，商务出行、休闲度假之理想的“家”。</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>