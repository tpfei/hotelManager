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
    <base href="<%=basePath%>">  
    <meta charset="UTF-8">
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <title>查看订单</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        a {
            color: #666;
            text-decoration: none;
        }
        body {
            padding: 20px;
            color: #666;
        }
        .fl{
            float: left;
        }
        .fr {
            float: right;
        }
        table {
            border-collapse: collapse;
            border-spacing: 0;
            border: 0;
            text-align: center;
            width: 937px;
            margin: auto;
        }
        th, td {
            border: 1px solid #CADEFF;
        }
        th {
            background: #e2f2ff;
            border-top: 3px solid #a7cbff;
            height: 30px;
        }
        td {
            padding: 10px;
            color: #444;
        }
        tbody tr:hover {
            background: RGB(238,246,255);
        }
        .checkbox {
            width: 60px;
        }

        .name {
            width: 130px;
        }

        .tel,.id {
            width: 150px;
            color: #666;
            font-weight: bold;
        }
        .operation {
            width: 80px;
        }
        .operation span:hover, a:hover {
            cursor: pointer;
            color: red;
            text-decoration: underline;
        }

        .foot {
            width: 935px;
            margin:10px auto;
            color: #666;
            height: 48px;
            border: 1px solid #c8c8c8;
            background-color: #eaeaea;
            background-image:linear-gradient(RGB(241,241,241),RGB(226,226,226));
            position: relative;
            z-index: 8;
        }
        .foot div, .foot a {
            line-height: 48px;
            height: 48px;
        }
        .foot .select-all {
            width: 100px;
            height: 48px;
            line-height: 48px;
            padding-left: 5px;
            color: #666;
        }
        .foot .closing {
            border-left: 1px solid #c8c8c8;
            width: 100px;
            text-align: center;
            color: #000;
            font-weight: bold;
            background: RGB(238,238,238);
            cursor: pointer;
        }
        .foot .total{
            margin: 0 20px;
            cursor: pointer;
        }
        .foot  #priceTotal, .foot #selectedTotal {
            color: red;
            font-family: "Microsoft Yahei";
            font-weight: bold;
        }
        .foot .selected {
            cursor: pointer;
        }
        .foot .selected .arrow {
            position: relative;
            top:-3px;
            margin-left: 3px;
        }
        .foot .selected .down {
            position: relative;
            top:3px;
            display: none;
        }
        .show .selected .down {
            display: inline;
        }
        .show .selected .up {
            display: none;
        }
        .foot .selected:hover .arrow {
            color: red;
        }
        .foot .selected-view {
            width: 935px;
            border: 1px solid #c8c8c8;
            position: absolute;
            height: auto;
            background: #ffffff;
            z-index: 9;
            bottom: 48px;
            left: -1px;
            display:none;
        }
        .show .selected-view {
            display: block;
        }
        .foot .selected-view div{
            height: auto;
        }
        .foot .selected-view .arrow {
            font-size: 16px;
            line-height: 100%;
            color:#c8c8c8;
            position: absolute;
            right: 330px;
            bottom: -9px;
        }
        .foot .selected-view .arrow span {
            color: #ffffff;
            position: absolute;
            left: 0px;
            bottom: 1px;
        }

    </style>
</head>
<body>
<table id="cartTable">
    <thead>
    <tr>
        <th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
        <th>订单号</th>
        <th>姓名</th>
        <th>人数</th>
        <th>房间类型</th>
        <th>房间号</th>
        <th>价格</th>
        <th>退订</th>
    </tr>
    </thead>
    <tbody>
		<s:iterator value="#request.list" id="t"  status="s"> 
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td><s:property value="#t.t_id" /></td>
        <td><s:property value="#t.xingming" /></td>
        <td><s:property value="#t.amount" /></td>
        <td><s:property value="#t.kflx" /></td>
        <td><s:property value="#t.roomnum" /></td>
        <td><s:property value="#t.cost" /></td>
	    <td>
	        <a href="deleteticket.action?id=<s:property value="#t.t_id" />">退订</a>
        </td>        
        </tr> 
        </s:iterator>    
        </tbody>
	</table>

	<div class="foot" id="foot">
	    <a class="fl delete" id="back" href="htIndexLogin.jsp"></a>
	    <div class="fr closing"><a class="fl delete" id="back" href="htIndexLogin.jsp">&nbsp;&nbsp;回到首页</a></div>
	</div>
</body>
</html>
