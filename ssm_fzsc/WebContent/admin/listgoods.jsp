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
						<th class="text-center">Inventory</th>
						<th class="text-center">Sales volume</th>
						<th class="text-center">Hits</th>
						<th class="text-center">Operate</th>
					</tr>
				</thead>
				<c:forEach items="${goodsList}" var="goods">
					<tr align="center">
						<td>${goods.goodsname}</td>
						<td>${goods.catename}</td>
						<td>${goods.price}</td>
						<td>${goods.special}</td>
						<td>${goods.recommend}</td>
						<td>${goods.addtime}</td>
						<td>${goods.storage}</td>
						<td>${goods.sellnum}</td>
						<td>${goods.hits}</td>
						<td><a href="goods/getGoodsById.action?id=${goods.goodsid}"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;<a
							href="goods/deleteGoods.action?id=${goods.goodsid}" onclick="{if(confirm('You sure you want to delete it?')){return true;}return false;}"><i
								class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
