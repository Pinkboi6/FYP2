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
			<h1 class="page-title">Customer user information list</h1>
		</div>
		<div class="main-content">
			<table class="table">

				<thead>
					<tr>
						<th class="text-center">username</th>
						<th class="text-center">Name</th>
						<th class="text-center">Gender</th>
						<th class="text-center">Date Of Birth</th>
						<th class="text-center">Contact</th>
						<th class="text-center">Registration date</th>
						<th class="text-center">Operate</th>
					</tr>
				</thead>
				<c:forEach items="${usersList}" var="users">
					<tr align="center">
						<td>${users.username}</td>
						<td>${users.realname}</td>
						<td>${users.sex}</td>
						<td>${users.birthday}</td>
						<td>${users.contact}</td>
						<td>${users.regdate}</td>
						<td><a href="users/deleteUsers.action?id=${users.usersid}"
							onclick="{if(confirm('You sure you want to delete it?')){return true;}return false;}"><i class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
