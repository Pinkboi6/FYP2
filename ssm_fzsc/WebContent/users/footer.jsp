<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="steps-block steps-block-red">
	<div class="container">
		<div class="row">
			<div class="col-md-4 steps-block-col">
				<i class="fa fa-truck"></i>
				<div>
					<h2>Free shipping</h2>
					<em>Express delivery withing 3 days</em>
				</div>
				<span>&nbsp;</span>
			</div>
			<div class="col-md-4 steps-block-col">
				<i class="fa fa-gift"></i>
				<div>
					<h2>Daily Gifts</h2>
					<em>3 Gifts daily for lucky customers</em>
				</div>
				<span>&nbsp;</span>
			</div>
			<div class="col-md-4 steps-block-col">
				<i class="fa fa-phone"></i>
				<div>
					<h2>477 505 8877</h2>
					<em>24/7 customer care available</em>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 text-right">
				<p class="powered">
					Copyright &copy; 2020. All rights reserved.<a target="_blank" href="admin/index.jsp">Administrator entrance</a>
				</p>
			</div>
		</div>
	</div>
</div>
<script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
<!-- pop up -->
<script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script>
<!-- slider for products -->
<script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script>
<!-- product zoom -->
<script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script>
<!-- Quantity -->

<script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
<script src="assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		Layout.init();
		Layout.initOWL();
		Layout.initImageZoom();
		Layout.initTouchspin();
		Layout.initTwitter();
	});
</script>