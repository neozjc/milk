<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<meta charset="UTF-8">
	<title>Basic DataGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="static/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="static/themes/icon.css">
	<script type="text/javascript" src="static/jquery.min.js"></script>
	<script type="text/javascript" src="static/jquery.easyui.min.js"></script>
	<script type="text/javascript" >
	$('#dg').datagrid({
		toolbar: [{
			iconCls: 'icon-edit',
			handler: function(){alert('edit')}
		},'-',{
			iconCls: 'icon-help',
			handler: function(){alert('help')}
		}]
	});
	</script>
</head>
<body>
<h2>Hello World!</h2>
用户名： ${user.userName}<br>
 密码：${user.userPassword}<br>
	<div style="margin:20px 0;"></div>
	
	

	<a href="area">区域信息维护 </a><br>
	<a href="area">分公司信息维护 </a>
	<form name="form1" action="login" method="post">

<table width="300" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="105" height="25" align="center">用户名：</td>
          <td height="25" colspan="2"><input type="text" name="userName" size="15" maxlength="100"/></td>
        </tr>
        <tr>
          <td height="25" align="center">密　码：</td>
          <td height="25" colspan="2"><input type="password" name="userPassword" size="15" maxlength="100"/></td>
        </tr>
        <tr>
          
          <td height="25" colspan="3"><input type="submit" name="提交" size="15" maxlength="100"/><input type="reset" name="重置" size="15" maxlength="100"/></td>
        </tr>
</table>
 
</form>

<h2>Basic Layout</h2>
	<p>The layout contains north,south,west,east and center regions.</p>
	<div style="margin:20px 0;"></div>
	<div class="easyui-layout" style="width:700px;height:350px;">
		<div data-options="region:'north'" style="height:50px"></div>
		<div data-options="region:'south',split:true" style="height:50px;"></div>
		<div data-options="region:'east',split:true" title="East" style="width:100px;"></div>
		<div data-options="region:'west',split:true" title="West" style="width:100px;"></div>
		<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
			<table class="easyui-datagrid"
					data-options="url:'datagrid_data1.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
				<thead>
					<tr>
						<th data-options="field:'itemid'" width="80">Item ID</th>
						<th data-options="field:'productid'" width="100">Product ID</th>
						<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
						<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
						<th data-options="field:'attr1'" width="150">Attribute</th>
						<th data-options="field:'status',align:'center'" width="60">Status</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>
</html>
