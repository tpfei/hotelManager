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
    
    <form name="update" method="post" action="updateticket.action">
    <table class="tablelist"> 
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>订单状态<i class="sort"><img src="images/px.gif" /></i></th>
        <th>编辑</th>
        </tr>
        </thead>
    <tbody>  
	  <tr>
	  	<td><input name="subBox" type="checkbox" /></td>
	  	<td>
			<select name="ticket.state">
				<option>预订</option>
				<option>已确认</option>
			</select>
	  	  <td><input type="submit" class="sure" value="确认修改"/></td>					
	  	</tr>           
    </tbody>
	</table>
	</form>
</body>
</html>
