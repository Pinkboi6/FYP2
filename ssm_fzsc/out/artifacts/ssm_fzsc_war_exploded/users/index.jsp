<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<!-- BEGIN SLIDER -->
	<div class="page-slider margin-bottom-35">
		<div id="carousel-example-generic" class="carousel slide carousel-slider">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<!-- First slide -->
				<div class="item carousel-item-four active">
					<div class="container"></div>
				</div>

				<!-- Second slide -->
				<div class="item carousel-item-five">
					<div class="container"></div>
				</div>

				<!-- Third slide -->
				<div class="item carousel-item-six">
					<div class="container"></div>
				</div>

				<!-- Fourth slide -->
				<div class="item carousel-item-seven">
					<div class="center-block">
						<div class="center-block-wrap"></div>
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control carousel-control-shop" href="#carousel-example-generic" role="button"
				data-slide="prev"> <i class="fa fa-angle-left" aria-hidden="true"></i>
			</a> <a class="right carousel-control carousel-control-shop" href="#carousel-example-generic" role="button"
				data-slide="next"> <i class="fa fa-angle-right" aria-hidden="true"></i>
			</a>
		</div>
	</div>
	<!-- END SLIDER -->

	<div class="main">
		<div class="container">
			<div class="row margin-bottom-40">
				<!-- BEGIN SALE PRODUCT -->
				<div class="col-md-12 sale-product">
					<h2>You May Like</h2>
					<div class="owl-carousel owl-carousel5">
						<c:forEach items="${hotList}" var="goods">
							<div>
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img src="${goods.image }" style="width: 193px; height: 193px;" class="img-responsive" alt="">
									</div>
									<h3>
										<a href="index/detail.action?id=${goods.goodsid }">${fn:substring(goods.goodsname, 0, 12)}...</a>
									</h3>
									<div class="pi-price">￥${goods.price }</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- END SALE PRODUCT -->
			</div>
			<c:forEach items="${frontList}" var="cate" varStatus="status">
				<!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
				<div class="row margin-bottom-40">
					<!-- BEGIN SALE PRODUCT -->
					<div class="col-md-12 sale-product">
						<h2>${cate.catename }</h2>
						<div class="owl-carousel owl-carousel5">
							<c:forEach items="${cate.goodsList}" var="goods">
								<div>
									<div class="product-item">
										<div class="pi-img-wrapper">
											<img src="${goods.image }" style="width: 193px; height: 193px;" class="img-responsive" alt="">
										</div>
										<h3>
											<a href="index/detail.action?id=${goods.goodsid }">${fn:substring(goods.goodsname, 0, 12)}...</a>
										</h3>
										<div class="pi-price">￥${goods.price }</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<!-- END SALE PRODUCT -->
				</div>
				<!-- END SALE PRODUCT & NEW ARRIVALS -->
			</c:forEach>

		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
