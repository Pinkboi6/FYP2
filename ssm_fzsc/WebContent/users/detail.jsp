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
				<li><a href="index/cate.action?id=${goods.cateid }">${goods.catename }</a></li>
				<li class="active">${goods.goodsname }</li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-5">
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<c:forEach items="${cateList}" var="cate">
							<li class="list-group-item clearfix"><a href="index/cate.action?id=${cate.cateid }"><i
									class="fa fa-angle-right"></i> ${cate.catename }</a></li>
						</c:forEach>
					</ul>

					<div class="sidebar-products clearfix">
						<h2>You May Like</h2>
						<c:forEach items="${hotList}" var="goods">
							<div class="item">
								<a href="index/detail.action?id=${goods.goodsid }"><img src="${goods.image }"
									alt="Some Shoes in Animal with Cut Out"></a>
								<h3>
									<a href="index/detail.action?id=${goods.goodsid }">${goods.goodsname }</a>
								</h3>
								<div class="price">￥${goods.price}Yuan</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- END SIDEBAR -->

				<!-- BEGIN CONTENT -->
				<div class="col-md-9 col-sm-7">
					<div class="product-page">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="product-main-image">
									<img src="${goods.image }" alt="Cool green dress with red bell" class="img-responsive"
										data-BigImgsrc="${goods.image }">
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<h1>${goods.goodsname }</h1>
								<div class="price-availability-block clearfix">
									<div class="price">
										<strong><span>$</span>47.00</strong>
									</div>
								</div>
								<div class="description">
									Product Type:<a href="index/cate.action?id=${goods.cateid }">${goods.catename }</a>
									<hr>
									<br>Shelf date:${goods.addtime }
									<hr>
									<br>Clicks:${goods.hits }
									<hr>
									<br>Sales:${goods.sellnum }
									<hr>
									<br> Stock:${goods.storage }
									<hr>
									<br>Service: by &nbsp;<font color="red">${title }</font> &nbsp; Distribution, and provide after-sales service
									<hr>
									<br>
								</div>
								<form action="index/addcart.action" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY">
									<div class="product-page-cart">
										<div class="product-quantity">
											<input id="product-quantity" type="text" value="1" name="num" readonly class="form-control input-sm">
											<input type="hidden" name="goodsid" value="${goods.goodsid }" /> <input type="hidden" name="price"
												value="${goods.price }" />
										</div>
										<button class="btn btn-primary" type="submit">Add to Chart</button>
									</div>
								</form>
							</div>

							<div class="product-page-content">
								<ul id="myTab" class="nav nav-tabs">
									<li><a href="#Description" class="active" data-toggle="tab">Product introduction</a></li>
								</ul>
								<div id="myTabContent" class="tab-content" style="display: block;">${goods.contents }</div>
							</div>
							<div class="sticker sticker-sale"></div>
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
