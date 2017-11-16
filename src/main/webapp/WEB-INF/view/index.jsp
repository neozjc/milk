<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<meta charset="UTF-8">
	<title>Basic DataGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="static/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="static/themes/icon.css">
	<script type="text/javascript" src="static/jquery.min.js"></script>
	<script type="text/javascript" src="static/jquery.easyui.min.js"></script>
</head>
<body>
<h2>Hello World!</h2>
用户名： ${user.userName}<br>
 密码：${user.userPassword}<br>
	<div style="margin:20px 0;"></div>
	
	<table class="easyui-datagrid" title="User" style="width:700px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'user',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'userName',width:80">userName</th>
				<th data-options="field:'userPassword',width:100">userPassword</th>
				<th data-options="field:'userId',width:100">userId</th>
			</tr>
		</thead>
	</table>

</body>
</html>
