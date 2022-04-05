<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="en">
<head>
<base href="<%=basePath%>" />
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
						<th class="text-center">User Name</th>
						<th class="text-center">Name</th>
						<th class="text-center">Gender</th>
						<th class="text-center">Date Of Birth</th>
						<th class="text-center">Contact</th>
						<th class="text-center">Registration Date</th>
					</tr>
				</thead>
				<c:forEach items="${usersList}" var="users">
					<tr align="center">
						<td class="center">${users.username}</td>
						<td class="center">${users.realname}</td>
						<td class="center">${users.sex}</td>
						<td class="center">${users.birthday}</td>
						<td class="center">${users.contact}</td>
						<td class="center">${users.regdate}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="users/queryUsersByCond.action" name="myform" method="post">
						<label>Query conditions: <select name="cond" style="width: 100px">
								<option value="username">Search by user name</option>
								<option value="password">Query by password</option>
								<option value="realname">Search by name</option>
								<option value="sex">Query by gender</option>
								<option value="birthday">Query by date of birth</option>
								<option value="contact">Inquire by contact</option>
								<option value="regdate">Query by registration date</option>
						</select>
						</label>&nbsp;&nbsp;&nbsp; <label>Keyword: <input type="text" name="name" required style="width: 100px" /></label>&nbsp;&nbsp;&nbsp;
						<label><input type="submit" value="Inquire" class="mws-button green" /> </label>${html }
					</form>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>
