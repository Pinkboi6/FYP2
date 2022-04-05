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
			<h1 class="page-title">Product information list</h1>
		</div>
		<div class="main-content">
			<table class="table">
				<thead>
					<tr>
						<th class="text-center">Product Name</th>
						<th class="text-center">Product Types</th>
						<th class="text-center">Price</th>
						<th class="text-center">Is it a special offer</th>
						<th class="text-center">Is it recommended</th>
						<th class="text-center">Shelf date</th>
						<th class="text-center">Stocks</th>
						<th class="text-center">Sales</th>
						<th class="text-center">Hits</th>
					</tr>
				</thead>
				<c:forEach items="${goodsList}" var="goods">
					<tr align="center">
						<td class="center">${goods.goodsname}</td>
						<td class="center">${goods.catename}</td>
						<td class="center">${goods.price}</td>
						<td class="center">${goods.special}</td>
						<td class="center">${goods.recommend}</td>
						<td class="center">${goods.addtime}</td>
						<td class="center">${goods.storage}</td>
						<td class="center">${goods.sellnum}</td>
						<td class="center">${goods.hits}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="goods/queryGoodsByCond.action" name="myform" method="post">
						<label>Query conditions: <select name="cond" style="width: 100px">
								<option value="goodsname">Search by product name</option>
								<option value="image">Search by picture</option>
								<option value="cateid">Query by product type</option>
								<option value="price">Query by price</option>
								<option value="special">Query by special price</option>
								<option value="recommend">Query by recommendation</option>
								<option value="addtime">Query by date of listing</option>
								<option value="storage">Query by inventory</option>
								<option value="sellnum">Query by sales quantity</option>
								<option value="hits">Query by clicks</option>
								<option value="contents">Query by product introduction</option>
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
