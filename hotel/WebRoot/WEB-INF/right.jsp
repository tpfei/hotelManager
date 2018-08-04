<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>酒店后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click2").click(function(){
  $(".tip2").fadeIn(200);
  });
  
  $(".tiptop a2").click(function(){
  $(".tip2").fadeOut(200);
});

  $(".sure2").click(function(){
  $(".tip2").fadeOut(100);
});

  $(".cancel2").click(function(){
  $(".tip2").fadeOut(100);
});

});
</script>

</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li><span><img src="images/t02.png" /></span>修改</li>
        <li class="click2"><span><img src="images/t03.png" /></span>删除</li>
        </ul>
              
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    <table class="tablelist">
    	<thead>	
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>房间类型</th>
        <th>价格</th>
        <th>房间面积</th>
        <th>房间号</th>
        <th>电视服务</th>
        <th>宽带服务</th>
        <th>加床加价</th>
        <th>&nbsp;&nbsp;&nbsp;编辑</th>
        </tr> 
        </thead>
    <tbody>
    
		<s:iterator value="#request.list" id="d" status="b">  
        <tr>
        <td><input name="subBox" type="checkbox" /></td>
        <td>${d.kf_id}</td>
        <td>${d.kflx}</td>
        <td>${d.cost}</td>
        <td>${d.fjmj}</td>
        <td>${d.fjh}</td>
        <td>${d.tv}</td>
        <td>${d.wifi}</td>
        <td>${d.jcjj}</td>
        <td>
        	<a href="prepupkfxx.action?id=${d.kf_id}" class="tablelink">修改</a>
        	<a href="deletekfxx.action?id=${d.kf_id}" class="tablelink">删除</a>
        </td>
        </tr> 
		</s:iterator>
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">8888</i>条记录，当前显示第&nbsp;<i class="blue">8888&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem current"><a href="javascript:;">1</a></li>
        <li class="paginItem"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
        
    <div class="tip">
    <div class="tiptop"><span>提示信息</span><a></a></div>
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>        
        <div class="tipbtn">
        <a href="addpagekfxx.action" target="_parent">
        	<input name="" type="button"  class="sure" value="确定" />&nbsp;
        </a>
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    </div> 
    </div> 
      
    <div class="tip2">
    <div class="tiptop2"><span>提示信息</span><a></a></div>
      <div class="tipinfo2">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright2">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>        
        <div class="tipbtn2">
        <a href="deletekfxx.action" target="_parent">
        	<input name="" type="button"  class="sure" value="确定" />&nbsp;
        </a>
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    </div> 
         
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
