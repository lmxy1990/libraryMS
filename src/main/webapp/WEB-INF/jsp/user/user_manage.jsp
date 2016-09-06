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
<title>用户修改</title>
</head>
<body style="min-height: 600px;">
<table class="table table-bordered"> 
    <caption>用户信息管理</caption> 
    <thead> 
        <tr> 
            <th>姓名</th> 
            <th>性别</th> 
            <th>年龄</th> 
            <th>证件类型</th> 
            <th>证件序号</th> 
            <th>办证日期</th> 
            <th>最大借阅数</th> 
            <th>电话</th> 
            <th>押金</th> 
            <th>职业</th> 
            <th colspan="2">操作</th> 
        </tr> 
    </thead> 
   <tbody> 
  		<c:forEach var="list" items="${userList}">
					<tr>
						<td><c:out value="${list.name}"></c:out></td>
						<td><c:out value="${list.sex}"></c:out></td>
						<td><c:out value="${list.age}"></c:out></td>
						<td><c:out value="${list.IDCardType}"></c:out></td>
						<td><c:out value="${list.IDCardNo}"></c:out></td>
						<td><c:out value="${list.date}"></c:out></td>
						<td><c:out value="${list.maxNum}"></c:out></td>
						<td><c:out value="${list.tel}"></c:out></td>
						<td><c:out value="${list.keepMoney}"></c:out></td>
						<td><c:out value="${list.zy}"></c:out></td>
						<td>
						<a href="javascript:;" onclick="setId(<c:out value="${list.id}"/>)" data-toggle="modal" data-target="#modifyUser">修改</a>
						</td>
						<td>
						<a href="<%=path%>/userDoDel.html?id=<c:out value = "${list.id}" />">删除</a>
						</td>
					</tr>
				</c:forEach>
    </tbody> 
</table>
<!-- 弹出框 -->
<div class="modal fade" id="modifyUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
    <div class="modal-dialog"> 
        <div class="modal-content"> 
        <form action="<%=path%>/userDoModify.html" method="post">
            <div class="modal-header"> 
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
                <h4 class="modal-title" id="myModalLabel">用户信息修改<font color="red">(只填写需要修改的信息)</font></h4> 
            </div> 
            <div class="modal-body">
            <div style="display: inline-block;width: 190px;">
            <input name = "Id" type="number" hidden="hidden" class = "hidden" id = "userId"/>
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
            </div> 
            <div class="modal-footer"> 
				<div align="center">
					<input type="submit" class = "btn btn-primary " value="修改" />
				</div>
            </div> 
            </form>
        </div>
    </div>
</div>
	<!-- JS导入 -->
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/js/user_manage.js"></script>
</body>
</html>