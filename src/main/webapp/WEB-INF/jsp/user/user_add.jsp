<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="user_add.jsp"%>
<%@include file="../check_admin.jsp"%>
<html>
<head>
<!-- CSS导入 -->
<link type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户新增</title>
</head>
<body>
	<div 
	style="text-align: left ;width: 386px;
	margin: 0 auto;background-color: aliceblue;font-family: cursive;font-size: 18px">
	<h3 style="text-align: center">用户新增</h3>
	<font color="red">${info}</font>
	<br/>
	<form action="<%=path%>/user/userAdd.html"  method="post">
		<div style="display: inline-block;width: 190px;">
			姓  名:
			<br />
			<input name="Name" type="text"  />
			<br />
			性  别:
			<br />
			<span>
				<label> <input type="radio" name="Sex" checked value="男" />男</label>
				<label> <input type="radio" name="Sex"  value="女" />女</label>
			</span>
			<br />
			年  龄:
			<br />
			<input  name="Age" type="number" />
			<br />
			证  件:
			<br />
			<input name="IDCardType" type="text"  />
			<br />
			证件号:
			<br />
			<input name="IDCardNo" type="number"  />
		</div>
		<div style="display: inline-block;width: 190px;">
			<br />
			日期:
			<br />
			<input type="Date" name="date" />
			<br />
			最大借阅数:
			<br />
			<input type="number" name="MaxNum" />
			<br />
			电  话:
			<br />
			<input type="number" name="Tel" />
			<br />
			押  金:
			<br />
			<input type="number" name="KeepMoney" />
			<br />
			职  业:
			<br />
			<input type="text" name="Zy" />
		</div>
		<br />
		<br />
		<div align="center">
			<input type="submit" class = "btn btn-primary " value="新增" />
		</div>
	</form>
	</div>
	<!-- JS导入 -->
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>