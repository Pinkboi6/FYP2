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
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN CONTENT -->
				<div class="col-md-12 col-sm-12">
					<h1>Commodity list</h1>
					<div class="goods-page">
						<div class="goods-data clearfix">
							<div class="table-wrapper-responsive">
								<table summary="Shopping cart">
									<tr>
										<th class="goods-page-image">&nbsp;</th>
										<th class="goods-page-description">Product</th>
										<th class="goods-page-quantity">Quantity</th>
										<th class="goods-page-price">Price</th>
										<th class="goods-page-total">Subtotal</th>
									</tr>
									<c:forEach items="${cartList}" var="cart">
										<tr>
											<td class="goods-page-image"><a href="index/detail.action?id=${cart.goodsid }"><img
													src="${cart.image }" alt="Berry Lace Dress"></a></td>
											<td class="goods-page-description">
												<h3>
													<a href="index/detail.action?id=${cart.goodsid }">${cart.goodsname }</a>
												</h3>
											</td>
											<td class="goods-page-quantity">${cart.num }</td>
											<td class="goods-page-price"><strong><span>¥</span>${cart.price }</strong>元</td>
											<td class="goods-page-total"><strong><span>¥</span>${cart.num*cart.price }</strong>元</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-8 col-md-offset-2">
						<div class="content-form-page">
							<form role="form" class="form-horizontal form-without-legend" autocomplete="off" action="index/checkout.action"
								method="post">
								<div class="form-group">
									<label class="col-lg-2 control-label" for="first-name">Total</label>
									<div class="col-lg-8">
										<strong class="price"><span>￥</span>${total }</strong>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for="first-name">Consignee name</label>
									<div class="col-lg-8">
										<input type="text" name="receiver" id="receiver" placeholder="Please enter the name of the consignee" required class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for="first-name">Shipping Address</label>
									<div class="col-lg-8">
										<input type="text" name="address" id="address" placeholder="Please enter the shipping address" required class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for="first-name">Contact information</label>
									<div class="col-lg-8">
										<input type="text" name="contact" id="contact" placeholder="Please enter contact information" required class="form-control">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
										<button class="btn btn-primary" type="submit">Submit orders</button>
									</div>
								</div>
							</form>
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
