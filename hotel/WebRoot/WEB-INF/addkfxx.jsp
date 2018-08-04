<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>酒店后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
</head>

<body>
	<div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
	    <li><a href="#">添加数据</a></li>
	    <li><a href="#">数据表</a></li>
	    </ul>
    </div>  
    
    <form name="add" method="post" action="savekfxx.action">
    <table class="tablelist"> 
    <thead>	
    	<tr>
        <th>编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>房间类型</th>
        <th>价格</th>
        <th>房间面积</th>
        <th>房间号</th>
        <th>电视服务</th>
        <th>宽带服务</th>
        <th>加床加价</th>
        <th>确定添加</th>
        </tr> 
    </thead>
    <tbody>  
	  <tr>
        <td><input  type="text" name="kfxx.kf_id" placeholder="编号"/></td>
 	    <td><input  type="text" name="kfxx.kflx" placeholder="客房类型"/></td>
 	    <td><input  type="text" name="kfxx.cost" placeholder="价格"/></td>
	    <td><input  type="text" name="kfxx.fjmj" placeholder="面积"/></td>
	    <td><input  type="text" name="kfxx.fjh" /></td>
	    <td>
	    <select name="kfxx.tv" >
			<option>yes</option>
			<option>no</option>
		</select>
		</td>
	    <td>
    	<select name="kfxx.wifi" >
			<option>yes</option>
			<option>no</option>
		</select>
		</td>
	    <td><input  type="text" name="kfxx.jcjj"/></td>
	    <td><input type="submit" class="sure" value="添加"/></td>					
	  </tr>           
    </tbody>
	</table>
	</form>
</body>
</html>
