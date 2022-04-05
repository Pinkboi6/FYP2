<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="en">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome To Use Background Management System</title>
<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
<script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
<link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
</head>
<body class=" theme-blue">
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content">
		<div class="header">
			<h1 class="page-title">Administrator information list</h1>
		</div>
		<div class="main-content">
			<table class="table">

				<thead>
					<tr>
						<th class="text-center">User Name</th>
						<th class="text-center">Name</th>
						<th class="text-center">Contect</th>
						<th class="text-center">Creation date</th>
						<th class="text-center">Operate</th>
					</tr>
				</thead>
				<c:forEach items="${adminList}" var="admin">
					<tr align="center">
						<td>${admin.username}</td>
						<td>${admin.realname}</td>
						<td>${admin.contact}</td>
						<td>${admin.addtime}</td>
						<td><a href="admin/getAdminById.action?id=${admin.adminid}"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;<a
							href="admin/deleteAdmin.action?id=${admin.adminid}" onclick="{if(confirm('You sure you want to delete it?')){return true;}return false;}"><i
								class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
