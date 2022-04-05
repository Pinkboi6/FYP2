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
					<h1>Shopping Cart</h1>
					<div class="goods-page">
						<div class="goods-data clearfix">
							<div class="table-wrapper-responsive">
								<table summary="Shopping cart">
									<tr>
										<th class="goods-page-image">&nbsp;</th>
										<th class="goods-page-description">Commodity</th>
										<th class="goods-page-quantity">Quantity</th>
										<th class="goods-page-price">Price</th>
										<th class="goods-page-total">Subtotal</th>
										<th class="goods-page-image">&nbsp;</th>
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
											<td class="del-goods-col"><a class="del-goods"
												href="javascript:if (confirm('Do you really want to remove this item from the shopping cart?')) location.href='<%=basePath%>index/deletecart.action?id=${cart.cartid}';">&nbsp;</a></td>
										</tr>
									</c:forEach>
								</table>
							</div>

							<div class="shopping-total">
								<ul>
									<li class="shopping-total-price"><em>Total</em> <strong class="price"><span>￥</span>${total }</strong></li>
								</ul>
							</div>
						</div>
						<a href="index.jsp" class="btn btn-default">Continue Shopping<i class="fa fa-shopping-cart"></i></a> <a
							href="index/preCheckout.action" class="btn btn-primary">Settkement<i class="fa fa-check"></i></a>
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
