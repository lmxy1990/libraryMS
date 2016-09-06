<%@page import="com.pan.model.AdminModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	AdminModel model = request.getSession() == null ? null
			: (AdminModel) request.getSession().getAttribute("admin");
	if (model == null) {
		response.sendRedirect(path+"/loadPage.html") ;
		return ;
	}
	if (model.getUserName() == null){
		response.sendRedirect(path+"/loadPage.html") ;
		return ;
	}
%>