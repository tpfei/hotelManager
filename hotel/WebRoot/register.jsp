<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<script src="libs/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/register.css"/>
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<header>
			<a href="htIndex.jsp" class="logo"></a>
			<div class="desc">欢迎注册</div>
		</header>
			<form id="register" method="post" action="registeruser.action">
				<div class="register-box">
					<label for="username" class="username_label">用 户 名
					<input maxlength="20" type="text" name="user.username" placeholder="您的用户名和登录名"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
				<div class="register-box">
					<label for="username" class="other_label">设 置 密 码
					<input maxlength="20" type="password" name="user.password" placeholder="建议至少使用两种字符组合"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
 				<div class="register-box">
					<label for="username" class="other_label">确 认 密 码
					<input maxlength="20" type="password"  placeholder="请再次输入密码"/>
					</label>
					<div class="tips">	
					</div>
				</div>
				<div class="register-box">
					<label for="username" class="other_label">
					<span>中国 +86</span>
					<input class="phone" maxlength="20" type="text" name="user.tel" placeholder="建议使用常用手机"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
 				<div class="register-box">
					<label for="username" class="other_label">验 证 码
					<input maxlength="20" type="text" placeholder="请输入验证码"/>
					</label>
					<span id="code"></span>
					<div class="tips">
						
					</div> 
				</div>
				<div class="arguement">
					<input type="checkbox" id="xieyi" name="userid"/>
					阅读并同意
					<a href="#">《用户注册协议》</a>
					<a href="#">《隐私政策》</a>
					<div class="tips">
						
					</div>
				</div>
				<div class="submit_btn">
					<button type="submit" id="submit_btn">立 即 注 册</button>
				</div>
			</form>
		<div class="footer" style="height:50px"></div>
	</body>
</html>
