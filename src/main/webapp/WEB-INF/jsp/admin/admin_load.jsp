<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- CSS导入 -->
<link type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="<%=path%>/css/load.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登陆</title>
</head>
<body>
	<!-- 登录表单 -->
	<div id="loadOut">
		<!-- 标题 -->
		<h3>管理员登入</h3>
		<div>
			<form action="<%=path%>/admin/load.html" method="post">
				<br/>
				<br/>
				<font>帐号:</font>
				<input name="UserName"  type="text"/>
				<br/>
				<br/>
				<font>密码:</font>
				<input name="Password"  type="password"/>
				<br/>
				<br/>
				<font color="red">${error}</font>
				<br/>
				<button type="submit" class = "btn btn-primary">登入</button>
			</form>
		</div>
	</div>
	<!-- JS导入 -->
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>