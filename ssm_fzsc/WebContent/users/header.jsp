<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/pages/css/animate.css" rel="stylesheet">
<link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
<link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
<link href="assets/pages/css/components.css" rel="stylesheet">
<link href="assets/pages/css/slider.css" rel="stylesheet">
<link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
<link href="assets/corporate/css/style.css" rel="stylesheet">
<link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
<link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
<link href="assets/corporate/css/custom.css" rel="stylesheet">
<script type="text/javascript" charset="UTF-8" src="<%=basePath%>My97DatePicker/WdatePicker.js"></script>
<!-- BEGIN TOP BAR -->
<div class="pre-header">
	<div class="container">
		<div class="row">
			<!-- BEGIN TOP BAR LEFT PART -->
			<div class="col-md-6 col-sm-6 additional-shop-info">
				<ul class="list-unstyled list-inline">
					<!--<li><a href="javascript:void(0);">English </a></li>-->
				</ul>
			</div>
			<!-- END TOP BAR LEFT PART -->
			<!-- BEGIN TOP BAR MENU -->
			<div class="col-md-6 col-sm-6 additional-nav">
				<ul class="list-unstyled list-inline pull-right">
					<c:if test="${sessionScope.userid == null }">
						<li>Welcome}！</li>
						<li><a href="index/preLogin.action">[User login] </a></li>
						<li><a href="index/preReg.action">[Free registration] </a></li>
					</c:if>
					<c:if test="${sessionScope.userid != null }">
						<li>Hello <b>${sessionScope.username }</b></li>
						<li><a href="index/cart.action">[shopping cart] </a></li>
						<li><a href="index/usercenter.action">[User center] </a></li>
						<li><a href="index/exit.action">[logout] </a></li>
					</c:if>
				</ul>
			</div>
			<!-- END TOP BAR MENU -->
		</div>
	</div>
</div>
<!-- END TOP BAR -->

<!-- BEGIN HEADER -->
<div class="header">
	<div class="container">
		<a class="site-logo" href="index.jsp"><img src="images/logo.png" alt=""></a> <a
			href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

		<!-- BEGIN NAVIGATION -->
		<div class="header-navigation">
			<ul>
				<li><a href="index.jsp"> HomePage </a></li>
				<li><a href="index/article.action">Announcement </a></li>
				<li><a href="index/special.action">Recommend</a></li>
				<li><a href="index/recommend.action">bargain goods</a></li>
				<li><a href="index/all.action">All goods</a></li>

				<!-- BEGIN TOP SEARCH -->
				<li class="menu-search"><span class="sep"></span> <i class="fa fa-search search-btn"></i>
					<div class="search-box">
						<form action="index/query.action" method="post">
							<div class="input-group">
								<input type="text" placeholder="Please enter keywords." name="name" class="form-control"> <span class="input-group-btn">
									<button class="btn btn-primary" type="submit">Query</button>
								</span>
							</div>
						</form>
					</div></li>
				<!-- END TOP SEARCH -->
			</ul>
		</div>
		<!-- END NAVIGATION -->
	</div>
</div>
<!-- Header END -->
