<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@taglib prefix="s" uri="/struts-tags"%> 
 
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
<head>
<title>新闻</title>
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
						    	<li><a href="htIndexLogin.jsp">首页</a></li>
						    	<li><a href="rooms.jsp">房间</a></li>
						    	<li class="active"><a href="news.jsp">新闻</a></li>
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
	    		    <div class="clearfix"> </div>
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
    <div class="banner">
   	  <div class="container_wrap">
   	       <div class="dropdown-buttons">   
            		  <div class="dropdown-button">           			
					</div>
				     <div class="dropdown-button">
					 </div>
				   </div>  
		    <form>
				 <div class="contact_btn"></div>
			</form>        		
   		    <div class="clearfix"></div>
         </div>
   </div>
     <div class="content_top">
   	  <div class="container">
   		<div class="col-md-4 bottom_nav">
   		   <div class="content_menu">
			</div>
		</div>
		<div class="col-md-4 content_dropdown1">
		   <div class="content_dropdown">    
		     </div>
		     <div class="content_dropdown">    
		       </div>
		</div>
		<div class="col-md-4 filter_grid">
			<ul class="filter">
				<li class="fil">导航 :</li>
				<li><a href=""> <i class="icon1"> </i> </a></li>
				<li><a href=""> <i class="icon2"> </i> </a></li>
				<li><a href=""> <i class="icon3"> </i> </a></li>
				<li><a href=""> <i class="icon4"> </i> </a></li>
				<li><a href=""> <i class="icon5"> </i> </a></li>
			</ul>
		</div>
   	</div>
   </div>
   <div class="living_middle">
   	  <div class="container">
   		  <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   		  	<ul class="feature">
                   <li> <i class="icon-trophy"></i></li>
                    <li class="feature_right"><h4>在星级会所里，享用空中泳池及设施一流的康体中心，重唤身心活力。</h4>
                    <p>
                        　				广州市最繁华的金融及商业区，举步可至城市地标中信广场，邻近广州火车东站，连接广州、东莞、深圳及香港的交通枢纽。酒店紧邻地铁1号、3号线体育西路站E号出口和地铁3号线林和西A出口（双地铁线路）。   </p>
                    </li>
                    <div class="clearfix"></div>
            </ul>
            <ul class="feature">
                   <li> <i class="icon-tick"></i></li>
                    <li class="feature_right"><h4>广州市最繁华的金融及商业区</h4>
                    <p>
                        　广州市最繁华的金融及商业区，举步可至城市地标中信广场，邻近广州火车东站，连接广州、东莞、深圳及香港的交通枢纽。    </p>
                    </li>
                    <div class="clearfix"></div>
            </ul>
            <ul class="feature">
                   <li> <i class="icon-audio"></i></li>
                    <li class="feature_right"><h4>高品质的客房产品设施+细致温馨的服务</h4>
                    <p>
                        为您提供一个自在、放松的居停空间。在这里，能够休憩、充电、放松，是您商务出行及旅游的上佳选择。岭南繁华都市天河亚朵生活  </p>
                    </li>
                    <div class="clearfix"></div>
            </ul>
            <ul class="feature last_grid">
                   <li> <i class="icon-video"></i></li>
                    <li class="feature_right"><h4>以阅读和人文摄影为主题</h4>
                    <p>
                                        广州天河亚朵酒店设计理念是以阅读和人文摄影为主题，高品质的客房产品设施+细致温馨的服务，带给您“自然、静谧、温暖、朴实”的健康生活方式。</p>
                     </p>
                    </li>
                    <div class="clearfix"></div>
            </ul>
         </div>
         <div class="col-md-8 wow fadeInRight" data-wow-delay="0.4s">
          <div class="educate_grid">
            <div class="col-md-6 room-grid">
   	    	  <div class="living_box"><a href="htIndexLogin.jsp">
			    <img src="images/e4.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">详情</span>
			    </span>
				</a>
				<div class="living_desc desc1">
				<h3><a href="#">高品质的客房</a></h3>
				<p>高品质的客房产品设施+细致温馨的服务，带给您“自然、静谧、温暖、朴实”的健康生活方式 </p>
				<p class="educate"><img src="images/star1.png" alt=""/></p>
				<p class="price pr_box">$150</p>
				<div class="clearfix"></div>
				</div>
			  </div>
		    </div>
		    <div class="col-md-6 room-grid">
   	    	  <div class="living_box"><a href="single.html">
			    <img src="images/e3.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">房间</span>
			    </span>
				</a>
				<div class="living_desc desc1">
				<h3><a href="#">高品质的客房</a></h3>
				<p>高品质的客房产品设施+细致温馨的服务，带给您“自然、静谧、温暖、朴实”的健康生活方式 </p>
				<p class="educate"><img src="images/star1.png" alt=""/></p>
				<p class="price pr_box">$150</p>
				<div class="clearfix"></div>
				</div>
			  </div>
		    </div>
		    <div class="clearfix"></div>
		   </div>
		   <div class="educate_grid1">
            <div class="col-md-6 room-grid">
   	    	  <div class="living_box"><a href="single.html">
			    <img src="images/e1.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">天台</span>
			    </span>
				</a>
				<div class="living_desc desc1">
				<h3><a href="#">高品质的客房</a></h3>
				<p>高品质的客房产品设施+细致温馨的服务，带给您“自然、静谧、温暖、朴实”的健康生活方式</p>
				<p class="educate"><img src="images/star1.png" alt=""/></p>
				<p class="price pr_box">$150</p>
				<div class="clearfix"></div>
				</div>
			  </div>
		    </div>
		    <div class="col-md-6 room-grid">
   	    	  <div class="living_box"><a href="single.html">
			    <img src="images/e2.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">泳池</span>
			    </span>
				</a>
				<div class="living_desc desc1">
				<h3><a href="#">高品质的客房</a></h3>
				<p>高品质的客房产品设施+细致温馨的服务，带给您“自然、静谧、温暖、朴实”的健康生活方式 </p>
				<p class="educate"><img src="images/star1.png" alt=""/></p>
				<p class="price pr_box">$150</p>
				<div class="clearfix"></div>
				</div>
			  </div>
		    </div>
		    <div class="clearfix"></div>
		   </div>
		 </div>
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