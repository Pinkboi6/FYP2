<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<body class="ecommerce">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.jsp">HomePage</a></li>
				<li class="active">Product List</li>
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
					<!-- BEGIN PRODUCT LIST -->
					<div class="row product-list">
						<c:forEach items="${goodsList}" var="goods">
							<!-- PRODUCT ITEM START -->
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img src="${goods.image }" class="img-responsive" style="width:193px;height:193px;" alt="">
									</div>
									<h3>
										<a href="index/detail.action?id=${goods.goodsid }">${fn:substring(goods.goodsname, 0, 16)}</a>
									</h3>
									<div class="pi-price">￥${goods.price}元</div>
								</div>
							</div>
							<!-- PRODUCT ITEM END -->
						</c:forEach>
					</div>
					<!-- END PRODUCT LIST -->
					<!-- BEGIN PAGINATOR -->
					<div class="row">
						<div class="col-md-8 col-sm-8">
							<p class="text-right">${html }</p>
						</div>
					</div>
					<!-- END PAGINATOR -->
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
