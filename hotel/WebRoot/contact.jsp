<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>   
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
<head>
<title>联系我们</title>
<link href="htcss/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="htcss/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hotel Deluxe Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="htjs/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="htjs/login.js"></script>
<!--Animation-->
<script src="htjs/wow.min.js"></script>
<link href="htcss/animate.css" rel='stylesheet' type='text/css' />
<script>
	new WOW().init();
</script>
</head>
<body>
<div class="header">
   <div class="col-sm-8 header-left">
			 <div class="logo">
				<a href="htIndex.jsp"><img src="images/logo.png" alt=""/></a>
			 </div>
			 <div class="menu">
				  <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
				    <ul class="nav" id="nav">
				    	<li class="active"><a href="htIndexLogin.jsp">首页</a></li>
				    	<li><a href="rooms.jsp">房间</a></li>
				    	<li><a href="news.jsp">新闻</a></li>
				    	<li><a href="gallery.jsp">酒店展示</a></li>
				    	<li><a href="contact.jsp">联系我们</a></li>
						<div class="clearfix"></div>
					</ul>
					<script type="text/javascript" src="htjs/responsive-nav.js"></script>
		    </div>	
		     <!-- start search-->
		      <div class="search-box">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
						</form>
					</div>
				</div>
				<!----search-scripts---->
				<script src="htjs/classie.js"></script>
				<script src="htjs/uisearch.js"></script>
				<script>
					new UISearch( document.getElementById( 'sb-search' ) );
				</script>
				<!----//search-scripts---->						
   		    <div class="clearfix"></div>
   	    </div>
	    <div class="col-sm-4 header_right">
	 	<div id="loginContainer">
	 		    <a href="#" id="loginButton"><img src="images/login.png">
	 		      <span><%= session.getAttribute("username")%></span>
			    </a>
			    <a href="executeloginout.action" target="_parent">
			      <span>退出</span>
			    </a>
			    <a href="show_usrticket.action" target="_parent">
			      <span>订单</span>
			    </a>
	         </div>
	       <div class="clearfix"></div>
	     </div>
	     <div class="clearfix"></div>
	</div>
   <div class="contact">
   	<div class="container">
   	 <h1>联系我们</h1>
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 	<div class="map">
		   <iframe src="https://map.baidu.com/"> </iframe>
		</div>
   	 </div>
   	 <div class="col-md-3 wow fadeInRight" data-wow-delay="0.4s">
   	 	<address class="address">
              <p>欢迎给我们留言，在这里，能够休憩、充电、放松，是您商务出行及旅游的上佳选择。岭南繁华都市天河亚朵生活</p>
              <dl>
                 <dt></dt>
                 <dd>免费热线:<span> +1 800 254 2478</span></dd>
                 <dd>电话:<span> +1 800 547 5478</span></dd>
                 <dd>传真: <span>+1 800 658 5784</span></dd>
                 <dd>电子邮箱:&nbsp; <a href="guet.edu.com.cn">桂电大酒店</a></dd>
              </dl>
           </address>
   	 </div>
   </div>
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">
   	  <div class="container">
   	  	<h2>问题反馈</h2>
   	  	  <form>
			<div class="to">
                   	<input type="text" class="text" value="姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}">
			 	<input type="text" class="text" value="电子邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电子邮箱';}" style="margin-left:20px">
			 	<input type="text" class="text" value="地址" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '地址';}" style="margin-left:20px">
			 	<div class="clearfix"></div>
			</div>
			<div class="text">
                  <textarea value="反馈信息:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '反馈信息';}">反馈信息:</textarea>
               </div>
               <div class="form-submit1">
	           <input name="submit" type="submit" id="submit" value="提交">
	         
			</div>
			<div class="clearfix"></div>
          </form>
   	  </div>	  
   </div>
   <div class="footer">
		 	<div class="copy wow fadeInRight" data-wow-delay="0.4s">
              <p>Copyright &copy; 2016.香格里拉大酒店 <a href="htIndex.jsp" target="_blank" title="首页">香格里拉大酒店</a></p>
	        </div>
		  </div>
		  <div class="clearfix"> </div>
	</body>
</html>		