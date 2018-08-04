<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
<head>
<title>首页</title>
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
<script src="htjs/jquery.easydropdown.js"></script>
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
			    	<li class="active"><a href="htIndex.jsp">首页</a></li>
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
  		      <div id="loginContainer"><a href="#" id="loginButton"><img src="images/login.png"><span>登录</span></a>
			    <div id="loginBox">
			        <form id="loginForm" name="login" method="post" action="loginuser.action">
						<%  
							String username = "";  
							String userpwd = "";  
							
							Cookie[] cookies = request.getCookies();  
							for (int i = 0; i < cookies.length; i++) {  
					 		    if (cookies[i].getName().equals("userName")) {   
							        username = cookies[i].getValue();    
							        request.setAttribute("xingming", username);  
							    }
							    if (cookies[i].getName().equals("password")) {
							    	userpwd = cookies[i].getValue();  
							    	request.setAttribute("mima", userpwd); 
							    }
							}  
						%> 
		                <fieldset id="body">
		                	<fieldset>
		                          <label for="email">账号</label>
		                          <input type="text" name="userName" id="email" placeholder="请输入用户名" value="${xingming}">
		                    </fieldset>
		                    <fieldset>
		                            <label for="password">密码</label>
		                            <input type="password" name="password" id="password" placeholder="请输入密码" value="${mima}">
		                     </fieldset>
		                    <input type="submit" id="login" value="登录">
		                     <a id="login" href="register.jsp">注册</a>
		                	<label for="checkbox"><input name="ck" type="checkbox" id="checkbox"> <i>记住密码</i></label>
		            	</fieldset>
		                 <span><a href="#">忘记密码?</a></span>
				      </form>
	              </div>
             </div>
                <div class="clearfix"></div>
               </div>
              <div class="clearfix"></div>
</div>
<div class="banner">
   	  <div class="container_wrap">
   		<h1></h1>
   		    <div class="clearfix"></div>
         </div>
   </div>
   <div class="content_top">
   	  <div class="container">
   		<div class="col-md-4 bottom_nav">
   		   <div class="content_menu">
				<ul>
					<li class="active"><a href="#">房间推荐</a></li>
					<!-- <li><a href="#">Latest</a></li>
					<li><a href="#">Highlights</a></li> -->
				</ul>
			</div>
		</div>
		
		<div class="col-md-4 content_dropdown1">
		   <div class="content_dropdown"></div>
		     <div class="content_dropdown"></div>
		</div>
		
		<div class="col-md-4 filter_grid">
			<div class="content_menu">
			<ul class="filter">
				<li class="fil">导航 :</li>
				<li><a href=""> <i class="icon1"> </i> </a></li>
				<li><a href=""> <i class="icon2"> </i> </a></li>
				<li><a href=""> <i class="icon3"> </i> </a></li>
				<!-- <li><a href=""> <i class="icon4"> </i> </a></li> -->
				<li><a href=""> <i class="icon5"> </i> </a></li>
			</ul>
			</div>
		</div>
   	</div>
   </div>
   <div class="content_middle">
   	  <div class="container">
   	    <div class="content_middle_box">
          <div class="top_grid">
   			<div class="col-md-3 index-grids">
   			  <div class="grid1">
   				<div class="view view-first">
                  <div class="index_img"><img src="images/pic1.jpg" class="img-responsive" alt=""/></div>
   				    <div class="sale"></div>
   			          <div class="mask">
                        <div class="info"><i class="search"></i><a href="rooms.jsp">更多</a></div>
                        <ul class="mask_img">
                        	<li class="star"><img src="images/star.png" alt=""/></li>
                        	<li class="set"><img src="images/set.png" alt=""/></li>
                        	<div class="clearfix"> </div>
                        </ul>
                       </div>
                   </div>
                   <i class="home"></i>
   				 <div class="inner_wrap">
   				 	<h3>标准舒适情侣套间</h3>
   				 	<ul class="star1">
   				 	  <h4 class="green">酒店服务：多种规格电源插座、书桌、坐卧两用长沙发、电热水壶、小冰箱、咖啡机、免费洗漱用品及其他唤醒服务</h4>
   				 	  <li><a href="rooms.jsp"> <img src="images/star1.png" alt="">(236)</a></li>
   				 	</ul>
   				 </div>
   			   </div>
   			</div>
   			<div class="col-md-3 index-grids">
   			  <div class="grid1">
   				<div class="view view-first">
                  <div class="index_img1"><img src="images/pic6.jpg" class="img-responsive" alt=""/></div>
   				     <div class="mask">
                        <div class="info"><i class="search"></i> <a href="rooms.jsp">更多</a></div>
                        <ul class="mask_img">
                        	<li class="star"><img src="images/star.png" alt=""/></li>
                        	<li class="set"><img src="images/set.png" alt=""/></li>
                        	<div class="clearfix"> </div>
                        </ul>
                      </div>
                  </div>
                 <i class="home1"> </i>
   				 <div class="inner_wrap">
   				 	<h3>复古优雅单人景观房</h3>
   				 	<ul class="star1">
   				 	  <h4 class="green">酒店服务：多种规格电源插座、书桌、坐卧两用长沙发、电热水壶、小冰箱、咖啡机、免费洗漱用品及其他唤醒服务</h4>
   				 	  <li><a href="rooms.jsp"> <img src="images/star2.png" alt="">(136)</a></li>
   				 	</ul>
   				 </div>
   			   </div>
   			</div>
   			<div class="col-md-3 index-grids">
   			  <div class="grid1">
   				<div class="view view-first">
                  <div class="index_img2"><img src="images/pic2.jpg" class="img-responsive" alt=""/></div>
   				     <div class="mask">
                        <div class="info"><i class="search"></i> <a href="rooms.jsp">更多</a></div>
                        <ul class="mask_img">
                        	<li class="star"><img src="images/star.png" alt=""/></li>
                        	<li class="set"><img src="images/set.png" alt=""/></li>
                        	<div class="clearfix"> </div>
                        </ul>
                      </div>
                  </div>
                 <i class="home2"> </i>
   				 <div class="inner_wrap">
   				 	<h3>豪华舒适商务套房</h3>
   				 	<ul class="star1">
   				 	  <h4 class="green">酒店服务：多种规格电源插座、书桌、坐卧两用长沙发、电热水壶、小冰箱、咖啡机、免费洗漱用品及其他唤醒服务</h4>
   				 	  <li><a href="rooms.jsp"> <img src="images/star2.png" alt="">(136)</a></li>
   				 	</ul>
   				 </div>
   			   </div>
   			</div>
   			<div class="col-md-3 index-grids">
   			  <div class="grid1">
   				<div class="view view-first">
                  <div class="index_img"><img src="images/pic3.jpg" class="img-responsive" alt=""/></div>
   				     <div class="sale"></div>
   			          <div class="mask">
                      <div class="info"><i class="search"> </i> <a href="rooms.jsp">更多</a></div>
                        <ul class="mask_img">
                        	<li class="star"><img src="images/star.png" alt=""/></li>
                        	<li class="set"><img src="images/set.png" alt=""/></li>
                        	<div class="clearfix"> </div>
                        </ul>
                      </div>
                  </div>
                  <i class="home"></i>
   				  <div class="inner_wrap">
   				 	<h3>标准简约双人套房</h3>
   				 	<ul class="star1">
   				 	  <h4 class="green">酒店服务：多种规格电源插座、书桌、坐卧两用长沙发、电热水壶、小冰箱、咖啡机、免费洗漱用品及其他唤醒服务</h4>
   				 	  <li><a href="rooms.jsp"> <img src="images/star1.png" alt="">(236)</a></li>
   				 	</ul>
   				  </div>
   			   </div>
   			</div>
   			<div class="clearfix"> </div>
   		</div>
		<div class="OtherPadding" tabstyle="0" style="overflow-y: hidden;" data-wow-delay="0.4s">
		<div class="richContent">
			<p>
					<img src="images/hotel.jpg" width="1108" height="200"
					alt=" " data-original="images/hotel.jpg" class="" style="display: inline;">
			</p>
		</div>
	</div>
   	    <div class="middle_grid wow fadeInUp" data-wow-delay="0.4s">
   			<div class="col-md-6 index-grids">
   			   <div class="grid1">
   			     <div class="index_img"><img src="images/pic4.jpg" class="img-responsive" alt=""/></div>
   				  <i class="m_home"> </i>
                  <ul class="vision">
                  	 <li class="desc"><a href="#"> <img src="images/star1.png" alt="">(236)</a></li>
                  </ul>
   				  <div class="inner_wrap1">
   				 	<ul class="item_module">
   				 	 	<li class="module_left"><img src="images/m1.jpg" class="img-responsive" alt=""/></li>
   				 	 	<li class="module_right">
   				 	 		<img src="images/m_star.png" class="img-responsive" alt=""/>
   				 	 		<h5>用户</h5>
   				 	 		<p>"非常舒适，内置电视，宽带等服务。"</p>
   				 	 		<a href="single.html" class="content_btn">....查看更多</a>
   				 	 	</li>
   				 	 	<div class="clearfix"> </div>
   				 	 </ul>
   				  </div>
   			   </div>
   			</div>
   			<div class="col-md-6 index-grids">
   			   <div class="grid1">
   			     <div class="index_img1"><img src="images/pic5.jpg" class="img-responsive" alt=""/></div>
   				  <i class="m_home1"> </i>
                  <ul class="vision">
                  	 <li>推荐指数</li>
                  	 <li class="desc"><a href="rooms.jsp"> <img src="images/star2.png" alt="">(236)</a></li>
                  </ul>
   				  <div class="inner_wrap1">
   				 	<ul class="item_module">
   				 	 	<li class="module_left"><img src="images/m2.jpg" class="img-responsive" alt=""/></li>
   				 	 	<li class="module_right">
   				 	 		<img src="images/m_star1.png" class="img-responsive" alt=""/>
   				 	 		<h5>用户2</h5>
   				 	 		<p>"非常舒适，提供完善的服务."</p>
   				 	 		<a href="single.html" class="content_btn">....查看更多</a>
   				 	 	</li>
   				 	 	<div class="clearfix"> </div>
   				 	 </ul>
   				  </div>
   			   </div>
   			</div>
   			<div class="clearfix"> </div>
   		</div>
   		<div class="bottom_grid wow bounce" data-wow-delay="0.4s">
   		  <div class="col-md-6 index-grids">
   			   <div class="grid1">
   			     <div class="index_img1"><img src="images/pic5.jpg" class="img-responsive" alt=""/></div>
   				  <i class="m_home1"> </i>
                  <ul class="vision">
                  	 <li>推荐指数</li>
                  	 <li class="desc"><a href="rooms.jsp"> <img src="images/star2.png" alt="">(236)</a></li>
                  </ul>
   				  <div class="inner_wrap1">
   				 	<ul class="item_module">
   				 	 	<li class="module_left"><img src="images/m2.jpg" class="img-responsive" alt=""/></li>
   				 	 	<li class="module_right">
   				 	 		<img src="images/m_star.png" class="img-responsive" alt=""/>
   				 	 		<h5>用户1</h5>
   				 	 		<p>"非常舒适，提供完善的服务."</p>
   				 	 		<a href="single.jsp class="content_btn">....查看更多</a>
   				 	 	</li>
   				 	 	<div class="clearfix"> </div>
   				 	 </ul>
   				  </div>
   			   </div>
   			</div>
   			<div class="col-md-3 index-grids">
   			  <div class="grid1">
   				<div class="view view-first">
                  <div class="index_img"><img src="images/pic3.jpg" class="img-responsive" alt=""/></div>
   				     <div class="sale">$2.980</div>
   			          <div class="mask">
                      <div class="info"><i class="search"> </i> 查看更多</div>
                        <ul class="mask_img">
                        	<li class="star"><img src="images/star.png" alt=""/></li>
                        	<li class="set"><img src="images/set.png" alt=""/></li>
                        	<div class="clearfix"> </div>
                        </ul>
                      </div>
                  </div>
                  <i class="b_home"></i>
   				  <div class="inner_wrap2">
   				 	<h3>标准双人间</h3>
   				 	<ul class="star1">
   				 	  <h4 class="green">推荐指数</h4>
   				 	  <li><a href="#"> <img src="images/star1.png" alt="">(236)</a></li>
   				 	</ul>
   				  </div>
   			   </div>
   			</div>
   			<div class="col-md-3 index-grids">
   			  <div class="grid1">
   				<div class="view view-first">
                  <div class="index_img1"><img src="images/pic2.jpg" class="img-responsive" alt=""/></div>
   				     <div class="mask">
                        <div class="info"><i class="search"> </i> 更看更多</div>
                        <ul class="mask_img">
                        	<li class="star"><img src="images/star.png" alt=""/></li>
                        	<li class="set"><img src="images/set.png" alt=""/></li>
                        	<div class="clearfix"> </div>
                        </ul>
                      </div>
                  </div>
                 <i class="b_home1"> </i>
   				 <div class="inner_wrap2">
   				 	<h3>标准双人间</h3>
   				 	<ul class="star1">
   				 	  <h4 class="green">推荐指数</h4>
   				 	  <li><a href="#"> <img src="images/star2.png" alt="">(136)</a></li>
   				 	</ul>
   				 </div>
   			   </div>
   			</div>
   			<div class="clearfix"></div>
   			</div>
   		  </div>
   		  <div class="offering">
   		  	  <h2>您需要什么服务 ?</h2>
   		  	  <h3>提供订餐等服务</h3>
   		  	  <ul class="icons wow fadeInUp" data-wow-delay="0.4s">
   		  	  	 <li><i class="icon1"> </i><span class="one"> </span></li>
   		  	  	 <li><i class="icon2"> </i><span class="two"> </span></li>
   		  	  	 <li><i class="icon3"> </i><span class="three"> </span></li>
   		  	  	 <li><i class="icon4"> </i><span class="four"> </span></li>
   		  	  	 <li><i class="icon5"> </i></li>
   		  	  </ul>
   		  	  <div class="real">
   		  	  	<h4>欢迎光临</h4>
   		  	  	<div class="col-sm-6">
   		  	  	  <ul class="service_grid">
   	   				<i class="s1"> </i>
   	   				 <li class="desc1 wow fadeInRight" data-wow-delay="0.4s">
   	   				   <p>欢迎光临香格里拉大酒店，欢迎光临香格里拉大酒店欢迎，光临香格里拉大酒店</p>
   	   				 </li>
   	   				 <div class="clearfix"> </div>
   	   			   </ul>
   	   			 </div>
   	   			 <div class="col-sm-6">
   		  	  	  <ul class="service_grid">
   	   				<i class="s2"> </i>
   	   				 <li class="desc1 wow fadeInRight" data-wow-delay="0.4s">
   	   				   <p>欢迎光临香格里拉大酒店。欢迎光临香格里拉大酒店，欢迎光临香格里拉大酒店</p>
   	   				 </li>
   	   				 <div class="clearfix"> </div>
   	   			   </ul>
   	   			 </div>
   	   			 <div class="clearfix"> </div>
   	   			 </div>
   		  	  </div>
   		  </div>
   	  </div>
   </div>
   <div class="footer">

<!-- 			<h4>Follow Us</h4>
			<ul class="footer_social wow fadeInLeft" data-wow-delay="0.4s">
			  <li><a href=""> <i class="fb"> </i> </a></li>
			  <li><a href=""><i class="tw"> </i> </a></li>
			  <li><a href=""><i class="google"> </i> </a></li>
			  <li><a href=""><i class="u_tube"> </i> </a></li>
		 	</ul> -->
		 	<div class="copy wow fadeInRight" data-wow-delay="0.4s">
              <p>Copyright &copy; 2016.香格里拉大酒店 <a href="htIndex.jsp" target="_blank" title="首页">香格里拉大酒店</a></p>
	        </div>
		  </div>
		  <div class="clearfix"> </div>
	</body>
</html>
