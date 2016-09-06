<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../check_admin.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- CSS导入 -->
<link type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="<%=path%>/css/books_add.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书新增</title>
</head>
<body>
		<!-- 类的新增 -->
		<div id="addClass">
			<font color="red">${info}</font>
			<form action="<%=path%>/addBooksClass.html" method="post">
			类名:
			<input type="text" name="className"/>
				<button type="submit" class="btn btn-primary">新增类</button>
			<br />
			</form>
		</div>
		<br />
		<br />
		<!-- 书的新增 -->
		<div id="addBook" style="text-align: left;width: 168px;">
			<form action="<%=path%>/booksDoAdd.html" method="post">
			ISBN:
			<br/>
			<input name="ISBN" type="number" />
			<br />
			分类:
			<br/>
			<select name="Typeld" >
				<c:forEach var="list" items="${classList}">
					<option value="<c:out value="${list.id}" />" ><c:out value="${list.typeName}" /></option>
				</c:forEach>
			</select>
			<br />
			书名:
			<br />
			<input type="text" name = "BookName"/>
			<br />
			原作者:
			<br />
			<input type="text" name = "Writer"/>
			<br />
			译者:
			<br />
			<input type="text" name = "Translater"/>
			<br />
			出版社:
			<br />
			<input type="text" name = "Publisher"/>
			<br />
			发行日期:
			<br />
			<input type="text" name = "Date"/>
			<br />
			价格:
			<br />
			<input type="number" name = "Price"/>
			<br />
			<br />
			<div align="center">
				<button type="submit" class="btn btn-primary">新增图书</button>
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