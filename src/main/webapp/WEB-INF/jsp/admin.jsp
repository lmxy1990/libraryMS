<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="check_admin.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- CSS导入 -->
<link type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员信息变更</title>
</head>
<body style="min-height: 600px;">
	<!-- 管理员新增 -->
	<div>
		<button data-toggle="modal" data-target="#addAdmin" class="btn btn-primary">新增管理员</button>
		<!-- 新增管理员弹窗 -->
		<div class="modal fade" id="addAdmin" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- 数据写入 -->
					<div style="width: 100px; margin: 0 auto;">
						<form action="<%=path%>/adminAdd.html"  method="post">
							用户名:<input name="UserName" type="text" /> 密 码:<input
								name="Password" type="password" /> 邮 箱:<input name="Mail"
								type="email" />
							<button type="submit" class="btn btn-primary">新增</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 管理员信息修改以及删除 -->
	<div>
		<table class="table table-bordered">
			<caption>管理员信息管理!<font color="red">${info}</font></caption>
			<thead>
				<tr>
					<th>帐号</th>
					<th>密码</th>
					<th>邮箱</th>
					<th colspan="2">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="adminL" items="${adminList}">
					<tr>
						<td><c:out value="${adminL.userName}"></c:out></td>
						<td><c:out value="${adminL.password}"></c:out></td>
						<td><c:out value="${adminL.mail}"></c:out></td>
						<td><a href="javascript:;"
							onclick="adminSetId(<c:out value="${adminL.id}"/>)"
							data-toggle="modal" data-target="#modifyAdmin">修改</a></td>
						<td><a
							href="<%=path%>/delAdmin.html?adminId=<c:out value = "${adminL.id}" />">删除</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- 信息修改弹窗 -->
	<div class="modal fade" id="modifyAdmin" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<font color="red" style="text-align: center">只须修改改动的部分数据</font>
					<!-- 数据写入 -->
					<div style="width: 100px; margin: 0 auto;">
						<form action="<%=path%>/modifyAdmin.html" method="post">
						<input class="hidden"  hidden="hidden" name ="Id" id= "adminId"/>
							用户名:<input name="UserName" type="text" /> 密 码:<input
								name="Password" type="password" /> 邮 箱:<input name="Mail"
								type="email" />
							<button type="submit" class="btn btn-primary">修改</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	<!-- JS导入 -->
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/bootstrap.min.js "></script>
	<script type="text/javascript">
			function adminSetId(id) {
				$("#adminId").attr("value",id) ;
			}
		</script>
</body>
</html>