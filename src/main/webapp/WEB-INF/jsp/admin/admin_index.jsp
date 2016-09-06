<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../check_admin.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- CSS导入 -->
<link type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="<%=path%>/css/index.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书管理系统主页</title>
</head>
<body>
	<!-- 头部 -->
	<div id="head">
		<img alt="头部图片" src="<%=path%>/img/head.jpg" width="100%"
			height="120px;" /> <font id="headText">数字图书管理系统</font>
	</div>
	<div style="height: 40px;"></div>
	<!-- 导航栏 -->
	<div class="list">
		<ul>
			<li><a href="<%=path%>/">数字图书管理系统</a></li>
			<li><a href="javascript:void(0);" class="inactive">用户管理</a>
				<ul style="display: none">
					<li><a href="<%=path%>/userAdd.html" target="view_panel">新增用户</a></li>
					<li><a href="<%=path%>/userManage.html" target="view_panel">用户信息管理</a></li>
				</ul></li>
			<li><a href="javascript:void(0);" class="inactive">图书管理</a>
				<ul style="display: none">
					<li><a href="<%=path%>/booksAdd.html" target="view_panel">新增图书</a></li>
					<li><a href="<%=path%>/booksManage.html" target="view_panel">图书信息管理</a></li>
				</ul></li>
			<li><a href="javascript:void(0);" class="inactive">系统管理</a>
				<ul style="display: none">
					<li><a href="<%=path%>/adminPage.html" target="view_panel">管理员信息管理</a></li>
					<li><a href="<%=path%>/exitSys.html" target="_top">退出系统</a></li>
				</ul></li>
		</ul>
	</div>
	<!-- 框架 -->
<iframe name="view_panel" frameborder="0"  scrolling="no" ></iframe>
	<!-- JS导入 -->
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/index.js"></script>
</body>
</html>