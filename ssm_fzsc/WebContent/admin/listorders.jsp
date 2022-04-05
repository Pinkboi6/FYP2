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
			<h1 class="page-title">Order information list</h1>
		</div>
		<div class="main-content">
			<table class="table">

				<thead>
					<tr>
						<th class="text-center">Order ID</th>
						<th class="text-center">User</th>
						<th class="text-center">Total</th>
						<th class="text-center">Status</th>
						<th class="text-center">Generated date</th>
						<th class="text-center">Receiver</th>
						<th class="text-center">Shipping Address</th>
						<th class="text-center">Contact</th>
						<th class="text-center">Operate</th>
					</tr>
				</thead>
				<c:forEach items="${ordersList}" var="orders">
					<tr align="center">
						<td>${orders.ordercode}</td>
						<td>${orders.username}</td>
						<td>${orders.total}</td>
						<td>${orders.status}</td>
						<td>${orders.addtime}</td>
						<td>${orders.receiver}</td>
						<td>${orders.address}</td>
						<td>${orders.contact}</td>
						<td><c:if test="${orders.status eq 'Paid'}">
								<a href="orders/send.action?id=${orders.ordersid}">Ship</a>&nbsp;&nbsp;</c:if><a
							href="orders/deleteOrders.action?id=${orders.ordersid}"
							onclick="{if(confirm('You sure you want to delete it?')){return true;}return false;}"><i class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
