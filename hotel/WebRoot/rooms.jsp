<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
 
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
<head>
<title>房间</title>
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
			    	<li class="active"><a href="rooms.jsp">房间</a></li>
			    	<li><a href="news.jsp">新闻</a></li>
			    	<li><a href="gallery.jsp">酒店展示</a></li>
			    	<li><a href="contact.jsp">联系我们</a></li>
					<div class="clearfix"> </div>
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
   		    <div class="clearfix"> </div>
         </div>
    </div>
      <div class="content_top">
   	  <div class="container">
   		<div class="col-md-4 bottom_nav">
   		   <div class="content_menu">
				<ul>
					<li class="active"><a href="#">客房中心</a></li> 
<!-- 					<li><a href="#">Latest</a></li> 
					<li><a href="#">Highlights</a></li>  -->
				</ul>
			</div>
		</div>
	  <div class="introd" style="float: left;">
			<p>					 	
				我们提供 各类客房 246 间套，房型齐全，高贵舒适。配有进口洁具，精美家私、高档彩电、卫星电视、 VCD 点播系统、国内国际直拨电话、中央音响、独立调节温控器及客房小酒吧等，是理想的家外之家。而行政客房完善的商务设施更让人尽享轻松与便捷
			</p>
		</div>
		<div class="more" style="float: right;">
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
		</div>
   	</div>
   </div>
   <div class="living_middle">
   	  <div class="container">
   	  		<h2 class="title block-title">豪华客房</h2>
   	    <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	    	<div class="living_box"><a href="#">
			    <img src="images/l1.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">房间详情</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#">豪华大床房</a></h3>
				<p>广州 天河区 龙口西路189号 ，近地铁3号线岗顶A出口步行10分钟，天河电脑城，太古汇。 </p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price">¥100.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">2,412m</td>
                   <td><img src="images/bed.png" alt="" style="margin-right:7px;">6 Beds</td>
                   <td><img src="images/drop.png" alt="" style="margin-right:7px;">3 Baths</td>
                    </tr>
                </tbody></table>
			</div>
		 </div>
   	     <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	     	<div class="living_box"><a href="#">
			    <img src="images/l2.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">房间详情</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#">豪华情侣房</a></h3>
				<p>广州 天河区 龙口西路189号 ，近地铁3号线岗顶A出口步行10分钟，天河电脑城，太古汇。 </p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price">¥89.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">2,412m</td>
                   <td><img src="images/bed.png" alt="" style="margin-right:7px;">6 Beds</td>
                   <td><img src="images/drop.png" alt="" style="margin-right:7px;">3 Baths</td>
                    </tr>
                </tbody></table>
			</div>
   	     </div>
   	     <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	     	<div class="living_box"><a href="#">
			    <img src="images/l3.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">房间详情</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#">豪华商务套房</a></h3>
				<p>广州 天河区 龙口西路189号 ，近地铁3号线岗顶A出口步行10分钟，天河电脑城，太古汇。 </p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price">¥100.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">2,412m</td>
                   <td><img src="images/bed.png" alt="" style="margin-right:7px;">6 Beds</td>
                   <td><img src="images/drop.png" alt="" style="margin-right:7px;">3 Baths</td>
                    </tr>
                </tbody></table>
			</div>
   	      </div>
   	      <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	     	<div class="living_box"><a href="#">
			    <img src="images/l4.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">房间详情</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#">豪华海景房</a></h3>
				<p>广州 天河区 龙口西路189号 ，近地铁3号线岗顶A出口步行10分钟，天河电脑城，太古汇。 </p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price">¥100.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">2,412m</td>
                   <td><img src="images/bed.png" alt="" style="margin-right:7px;">6 Beds</td>
                   <td><img src="images/drop.png" alt="" style="margin-right:7px;">3 Baths</td>
                    </tr>
                </tbody></table>
			</div>
   	      </div>
   	      <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	     	<div class="living_box"><a href="#">
			    <img src="images/l5.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">房间详情</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#">豪华舒适商务套房</a></h3>
				<p>广州 天河区 龙口西路189号 ，近地铁3号线岗顶A出口步行10分钟，天河电脑城，太古汇。 </p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price">¥100.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">2,412m</td>
                   <td><img src="images/bed.png" alt="" style="margin-right:7px;">6 Beds</td>
                   <td><img src="images/drop.png" alt="" style="margin-right:7px;">3 Baths</td>
                    </tr>
                </tbody></table>
			</div>
   	      </div>
   	      <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	     	<div class="living_box"><a href="#">
			    <img src="images/l6.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label">房间详情</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#">豪华双人房</a></h3>
				<p>广州 天河区 龙口西路189号 ，近地铁3号线岗顶A出口步行10分钟，天河电脑城，太古汇。 </p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price">¥100.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">2,412m</td>
                   <td><img src="images/bed.png" alt="" style="margin-right:7px;">6 Beds</td>
                   <td><img src="images/drop.png" alt="" style="margin-right:7px;">3 Baths</td>
                    </tr>
                </tbody></table>
			</div>
   	      </div>
	  </div>  
   </div>
   <div class="living_bottom">
   	  <div class="container">
   	  	<h2 class="title block-title">标准客房</h2>
   	  	<div class="col-md-6 post_left wow fadeInLeft" data-wow-delay="0.4s">
   	  		<div class="mask1"><img src="images/pic4.jpg" alt="image" class="img-responsive zoom-img" /></div>
   	  		<div class="living_desc">
				<h3><a href="#">标准舒适情侣套间</a></h3>
				<p>酒店位于繁华的广州市天河区，临近天河体育中心、正佳广场、天河城百货、太平洋电脑城、岗顶地铁口，距琶洲国际会展中心仅15分钟车程，交通便利。 </p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price" style="font-size: 18px; color: #566375; margin-top:0px">¥100.00</p>
			</div>
   	  	</div>
   	  	<div class="col-md-6 post_left wow fadeInRight" data-wow-delay="0.4s">
   	  		<div class="mask1"><img src="images/pic5.jpg" alt="image" class="img-responsive zoom-img" /></div>
			<div class="living_desc">
				<h3><a href="#">标准双人房</a></h3>
				<p>酒店位于繁华的广州市天河区，临近天河体育中心、正佳广场、天河城百货、太平洋电脑城、岗顶地铁口，距琶洲国际会展中心仅15分钟车程，交通便利。</p>
				<a href="bookkfxx.action" class="btn3">预订</a>
				<p class="price" style="font-size: 18px; color: #566375; margin-top:0px">¥100.00</p>
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