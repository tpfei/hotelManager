<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
<head>
<title>Gallery</title>
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
<!------ Light Box ------>
<link rel="stylesheet" href="htcss/swipebox.css">
<script src="htjs/jquery.swipebox.min.js"></script> 
    <script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
<!------ Eng Light Box ------>	
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
						    	<li><a href="news.jsp">新闻</a></li>
						    	<li class="active"><a href="gallery.jsp">酒店展示</a></li>
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
   	    <div class="entertain_box wow fadeInLeft" data-wow-delay="0.4s">
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p1.jpg" class="swipebox"  title="Image Title"> <img src="images/p1.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p2.jpg" class="swipebox"  title="Image Title"> <img src="images/p2.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p3.jpg" class="swipebox"  title="Image Title"> <img src="images/p3.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p4.jpg" class="swipebox"  title="Image Title"> <img src="images/p4.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>v酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="clearfix"> </div>
		 </div>	
		 <div class="entertain_box1 wow fadeInRight" data-wow-delay="0.4s">
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p5.jpg" class="swipebox"  title="Image Title"> <img src="images/p5.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p6.jpg" class="swipebox"  title="Image Title"> <img src="images/p6.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p7.jpg" class="swipebox"  title="Image Title"> <img src="images/p7.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="col-md-3 grid_box">
		   	   <a href="images/p8.jpg" class="swipebox"  title="Image Title"> <img src="images/p8.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
		   	  <div class="grid_box2">
			   <h4><a href="#">花都香草世界</a></h4>
			   <p>酒店位于花东镇花安中路</p>
	          </div>
		   </div>
		   <div class="clearfix"> </div>
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