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
			<h1 class="page-title">User message list</h1>
		</div>
		<div class="main-content">
			<table class="table">

				<thead>
					<tr>
						<th class="text-center">User</th>
						<th class="text-center">Content</th>
						<th class="text-center">Date</th>
						<th class="text-center">Status</th>
						<th class="text-center">Admin Reply</th>
						<th class="text-center">Operate</th>
					</tr>
				</thead>
				<c:forEach items="${complainsList}" var="complains">
					<tr align="center">
						<td>${complains.username}</td>
						<td>${complains.contents}</td>
						<td>${complains.addtime}</td>
						<td>${complains.status}</td>
						<td>${complains.reps}</td>
						<td><c:if test="${complains.status eq 'Unanswered'}">
								<a href="complains/getComplainsById.action?id=${complains.complainsid}">Rely</a>&nbsp;&nbsp;</c:if> <a
							href="complains/deleteComplains.action?id=${complains.complainsid}"
							onclick="{if(confirm('确定要删除吗?')){return true;}return false;}"><i class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
