<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript">
	$(function() {
		var uls = $('.sidebar-nav > ul > *').clone();
		uls.addClass('visible-xs');
		$('#main-menu').append(uls.clone());
	});
</script>
<script src="lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>
<div class="sidebar-nav">
	<ul>

		<li><a data-target=".legal-menu1" class="nav-header collapsed" data-toggle="collapse">Administrator information management<i
				class="fa fa-collapse"></i></a></li>
		<li><ul class="legal-menu1 nav nav-list collapse">
				<li><a href="admin/createAdmin.action"><span class="fa fa-caret-right"></span>Add administrator information</a></li>
				<li><a href="admin/getAllAdmin.action"><span class="fa fa-caret-right"></span>Administrator information list</a></li>
				<li><a href="admin/queryAdminByCond.action"><span class="fa fa-caret-right"></span>Administrator information query</a></li>
			</ul></li>

		<li><a data-target=".legal-menu2" class="nav-header collapsed" data-toggle="collapse">Customer user information management<i
				class="fa fa-collapse"></i></a></li>
		<li><ul class="legal-menu2 nav nav-list collapse">
				<li><a href="users/getAllUsers.action"><span class="fa fa-caret-right"></span>Customer user information list</a></li>
				<li><a href="users/queryUsersByCond.action"><span class="fa fa-caret-right"></span>Customer user information query</a></li>
			</ul></li>

		<li><a data-target=".legal-menu3" class="nav-header collapsed" data-toggle="collapse">Commodity type information management<i
				class="fa fa-collapse"></i></a></li>
		<li><ul class="legal-menu3 nav nav-list collapse">
				<li><a href="cate/createCate.action"><span class="fa fa-caret-right"></span>Add product type information</a></li>
				<li><a href="cate/getAllCate.action"><span class="fa fa-caret-right"></span>Product type information list</a></li>
				<li><a href="cate/queryCateByCond.action"><span class="fa fa-caret-right"></span>Commodity type information query</a></li>
			</ul></li>

		<li><a data-target=".legal-menu4" class="nav-header collapsed" data-toggle="collapse">Commodity information management<i
				class="fa fa-collapse"></i></a></li>
		<li><ul class="legal-menu4 nav nav-list collapse">
				<li><a href="goods/createGoods.action"><span class="fa fa-caret-right"></span>Add product information</a></li>
				<li><a href="goods/getAllGoods.action"><span class="fa fa-caret-right"></span>Product information list</a></li>
				<li><a href="goods/queryGoodsByCond.action"><span class="fa fa-caret-right"></span>Commodity information query</a></li>
			</ul></li>

		<li><a data-target=".legal-menu7" class="nav-header collapsed" data-toggle="collapse">Order information management<i
				class="fa fa-collapse"></i></a></li>
		<li><ul class="legal-menu7 nav nav-list collapse">
				<li><a href="orders/getAllOrders.action"><span class="fa fa-caret-right"></span>Order information list</a></li>
				<li><a href="orders/queryOrdersByCond.action"><span class="fa fa-caret-right"></span>Order information query</a></li>
			</ul></li>

		<li><a data-target=".legal-menu9" class="nav-header collapsed" data-toggle="collapse">User message management<i
				class="fa fa-collapse"></i></a></li>
		<li><ul class="legal-menu9 nav nav-list collapse">
				<li><a href="complains/getAllComplains.action"><span class="fa fa-caret-right"></span>User message list</a></li>
				<li><a href="complains/queryComplainsByCond.action"><span class="fa fa-caret-right"></span>User message query</a></li>
			</ul></li>

		<li><a data-target=".legal-menu10" class="nav-header collapsed" data-toggle="collapse">News bulletin information management<i
				class="fa fa-collapse"></i></a></li>
		<li><ul class="legal-menu10 nav nav-list collapse">
				<li><a href="article/createArticle.action"><span class="fa fa-caret-right"></span>New news announcement information</a></li>
				<li><a href="article/getAllArticle.action"><span class="fa fa-caret-right"></span>News bulletin information list</a></li>
				<li><a href="article/queryArticleByCond.action"><span class="fa fa-caret-right"></span>News bulletin information query</a></li>
			</ul></li>

	</ul>
</div>

