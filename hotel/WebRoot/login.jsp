<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>酒店后台登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
	    <span class="systemlogo"></span>     
	    <div class="loginbox">
		    <form id="login" name="login" method="post" action="loginadmin.action">
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
			    <ul>  
				    <li><input type="text" name="userName" placeholder="请输入用户名" value="${xingming}"  class="input-size" /></li>
				    <li><input type="password" name="password" placeholder="请输入密码" value="${mima}"  class="input-size" /></li>
				    <li><input type="submit" value="登 录" class="btn-submit" /></li> 
				    <label><input name="ck" type="checkbox" value="" checked="checked"/>记住密码</label>
				    <label><a href="#">忘记密码</a></label>
				  </ul>
			</form> 
	    </div>
    </div>
	<div class="loginbm">欢迎使用酒店后台管理系统!</div>
</body>
</html>
