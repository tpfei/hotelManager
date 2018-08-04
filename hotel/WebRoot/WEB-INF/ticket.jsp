<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="easyui/jquery-1.8.3.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
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
          var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('setTitle','添加');
            $('#fm').form('clear');
            url = 'UserServlet?f=add';
        }
        function editUser(){
            var row = $('#mTb').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('setTitle','修改');
                $('#fm').form('load',row);
                url = 'UserServlet?f=update&id=' + row.id;
            }
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.success){
                        $.messager.show({
                            title: '提示',
                            msg: result.message
                        });
                        $('#dlg').dialog('close');     
                        $('#mTb').datagrid('reload');    
                    } else {
                        $.messager.show({
                            title: '提示',
                            msg: result.message
                        });
                    }
                }
            });
        }
        function removeUser(){
            var row = $('#mTb').datagrid('getSelected');
            if (row){
                $.messager.confirm('确认','您确定要删除吗？',function(r){
                    if (r){
                        $.post('UserServlet?f=delete',{id:row.id},function(result){
                            if (result.success){
                                $.messager.show({    // show error message
                                        title: '提示',
                                        msg: result.message
                                    });
                                $('#mTb').datagrid('reload');    // reload the user data
                            } else {
                                $.messager.show({    // show error message
                                    title: '提示',
                                    msg: result.message
                                });
                            }
                        },'json');
                    }
                });
            }
        }
        function doSearch(){
            $('#mTb').datagrid('load',{
                name: $('#username').val(),
                xueli: $('#userxueli').val()
            });
        }
  </script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="easyui-linkbutton">
        <span><img src="images/t01.png" /></span>
        <a href="#" class="easyui-linkbutton" plain="true" onclick="newUser()">添加</a></li>
        <li class="click"><span><img src="images/t02.png" /></span>
        <a href="#" class="easyui-linkbutton" plain="true" onclick="editUser()">修改</a></li>
        <li><span><img src="images/t03.png" /></span>
        <a href="#" class="easyui-linkbutton" plain="true" onclick="removeUser()">删除</a>
        </li>
        </ul>
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>   
    </div>    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>订单编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>客户</th>
        <th>房间类型</th>
        <th>入住日期</th>
        <th>退房日期</th>
        <th>房间号</th>
        <th>押金</th>
        <th>人数</th>
        <th>订单状态</th>
        <th>编辑</th>
        </tr>
        </thead>
        <tbody>               
	        <s:iterator value="#request.list" id="t"  status="s">
	        <tr>
	        <td><input name="" type="checkbox" value="" /></td>
	        <td><s:property value="#t.t_id" /></td>
	        <td><s:property value="#t.xingming" /></td>
	        <td><s:property value="#t.kflx" /></td>
	        <td><s:property value="#t.rzrq" /></td>
	        <td><s:property value="#t.tfrq" /></td>
	        <td><s:property value="#t.roomnum" /></td>
	        <td><s:property value="#t.cost" /></td>
	        <td><s:property value="#t.amount" /></td>                        
	        <td><s:property value="#t.state" /></td>
		    <td>
	        	<a href="prepupticket.action?id=<s:property value="#t.t_id" />" class="tablelink">修改</a>
	        </td>
	        </tr> 
	        </s:iterator>         
       </tbody>
    </table>
            
    <div class="pagin">
    	<div class="message">共<i class="blue">8888</i>条记录，当前显示第&nbsp;<i class="blue">8888&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
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
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>           
 </div>   
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
