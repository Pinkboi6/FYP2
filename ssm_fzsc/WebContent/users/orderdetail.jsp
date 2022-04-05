<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.jsp">HomePage</a></li>
				<li><a href="index/usercenter.action">User center</a></li>
				<li class="active">My order</li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-3">
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<jsp:include page="usermenu.jsp"></jsp:include>
					</ul>
				</div>
				<!-- END SIDEBAR -->

				<!-- BEGIN CONTENT -->
				<div class="col-md-9 col-sm-9">
					<h1>Order Details</h1>
					<div class="goods-page">
						<div class="goods-data clearfix">
							<div class="table-wrapper-responsive">
								<table summary="Shopping cart">
									<thead>
										<tr>
											<th>Order ID</th>
											<th>Product</th>
											<th>Quantity</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${detailsList}" var="orders">
											<tr>
												<td>${orders.ordercode }</td>
												<td><a href="index/detail.action?id=${orders.goodsid }"><font color="black">${orders.goodsname }</font></a></td>
												<td>${orders.num }</td>
												<td>${orders.price }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
