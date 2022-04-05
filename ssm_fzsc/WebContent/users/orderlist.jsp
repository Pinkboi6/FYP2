<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!doctype html>
<html lang="en">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>

</head>

<body class="ecommerce">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.jsp">HomePage</a></li>
				<li><a href="index/usercenter.action">User Center</a></li>
				<li class="active">My Order</li>
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
					<h1>My Order</h1>
					<div class="goods-page">
						<div class="goods-data clearfix">
							<div class="table-wrapper-responsive">
								<table summary="Shopping cart">
									<thead>
										<tr>
											<th>Order ID</th>
											<th>Total</th>
											<th>Order Date</th>
											<th>Order Status</th>
											<th>Consignee</th>
											<th>Contact</th>
											<th>Address</th>
											<th>Operate</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${ordersList}" var="orders">
											<tr>
												<td>${orders.ordercode }</td>
												<td>${orders.total }</td>
												<td>${orders.addtime }</td>
												<td>${orders.status }</td>
												<td>${orders.receiver }</td>
												<td>${orders.contact }</td>
												<td>${orders.address }</td>
												<td align="center"><c:if test="${orders.status eq 'non-payment'}">
														<a href="index/prePay.action?id=${orders.ordersid}" class="btn-def btn2">Pay</a>
													</c:if> <c:if test="${orders.status eq 'Shipped'}">
														<a href="index/over.action?id=${orders.ordersid}" class="btn-def btn2">Confirm receipt</a>
													</c:if><a href="index/orderdetail.action?id=${orders.ordercode}" class="btn-def btn2">Order Details</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="col-xs-6">${html }</div>
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
