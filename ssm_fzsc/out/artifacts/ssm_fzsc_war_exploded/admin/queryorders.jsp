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
					</tr>
				</thead>
				<c:forEach items="${ordersList}" var="orders">
					<tr align="center">
						<td class="center">${orders.ordercode}</td>
						<td class="center">${orders.username}</td>
						<td class="center">${orders.total}</td>
						<td class="center">${orders.status}</td>
						<td class="center">${orders.addtime}</td>
						<td class="center">${orders.receiver}</td>
						<td class="center">${orders.address}</td>
						<td class="center">${orders.contact}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="orders/queryOrdersByCond.action" name="myform" method="post">
						<label>Query conditions: <select name="cond" style="width: 100px">
								<option value="ordercode">Query by order number</option>
								<option value="usersid">Query by user</option>
								<option value="total">Query by total</option>
								<option value="status">Query by status</option>
								<option value="addtime">Query by generation date</option>
								<option value="receiver">Query by consignee</option>
								<option value="address">Query by shipping address</option>
								<option value="contact">Inquire by contact</option>
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
