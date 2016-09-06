<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../check_admin.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- CSS导入 -->
<link type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书修改</title>
</head>
<body style="font-size: 18px; min-height:700px">
<span id = "selectedIndex" class="hidden" hidden="hidden">${selectFlag}</span>
	<!-- 导航条 -->
	<div>
		<form action="<%=path%>/listBooks.html"
			class="navbar-form navbar-left" role="search">
			<select name="classId" id="classSelect">
				<c:forEach var="listCl" items="${classList}">
					<option value="<c:out value="${listCl.id}" />"><c:out
							value="${listCl.typeName}" /></option>
				</c:forEach>
			</select>
			<button type="submit" class="btn btn-default">查询图书</button>
			<button type="button" class="btn btn-default" onclick="delClass()">删除该分类</button>
		</form>
	</div>
	<table class="table table-bordered">
		<caption>图书信息管理</caption>
		<thead>
			<tr>
				<th>ISBN</th>
				<th>书名</th>
				<th>原作者</th>
				<th>译者</th>
				<th>出版商</th>
				<th>发行日期</th>
				<th>价格</th>
				<th colspan="2">操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="booksL" items="${booksList}">
				<tr>
					<td><c:out value="${booksL.ISBN}"></c:out></td>
					<td><c:out value="${booksL.bookName}"></c:out></td>
					<td><c:out value="${booksL.writer}"></c:out></td>
					<td><c:out value="${booksL.translater}"></c:out></td>
					<td><c:out value="${booksL.publisher}"></c:out></td>
					<td><c:out value="${booksL.date}"></c:out></td>
					<td><c:out value="${booksL.price}"></c:out></td>
					<td><a href="javascript:;" onclick="setClassId(<c:out value="${booksL.ISBN}"/>)"
						data-toggle="modal" data-target="#modifyBook">修改</a></td>
					<td><a
						href="<%=path%>/booksDoDel.html?bookId=<c:out value = "${booksL.ISBN}" />">删除</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 弹出框 -->
	<div class="modal fade" id="modifyBook" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			<font color="red" style="text-align: center">只须修改改动的部分数据</font>
				<!-- 数据写入 -->
				<div style="width: 211px; margin: 0 auto;">
					<form action="<%=path%>/booksDoModify.html" method="post">
						<input id="classId" name="ISBN" type="number" hidden="hidden"
							class="hidden" /> <span>分类:</span><br /> <select name="Typeld">
							<c:forEach var="listC" items="${classList}">
								<option value="<c:out value="${listC.id}" />"><c:out
										value="${listC.typeName}" /></option>
							</c:forEach>
						</select> <br /> <span>书名:</span> <br /> <input type="text"
							name="BookName" /> <br /> <span>原作者:</span> <br /> <input
							type="text" name="Writer" /> <br /> <span>译者:</span> <br /> <input
							type="text" name="Translater" /> <br /> <span>出版社:</span> <br />
						<input type="text" name="Publisher" /> <br /> <span>发行日期:
						</span><br /> <input type="text" name="Date" /> <br /> <span>价格:
						</span><br /> <input type="number" name="Price" /> <br /> <br />
						<div align="center">
							<button type="submit" class="btn btn-primary">修改图书</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 删除类表单 -->
	<form id="delClassForm" action="<%=path%>/books/delBooksClass.html" method="post">
		<input id="classNameIput" name="name" hidden="hidden" class="hidden" />
	</form>
	<!-- JS导入 -->
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/booksManage.js"></script>
</body>
</html>