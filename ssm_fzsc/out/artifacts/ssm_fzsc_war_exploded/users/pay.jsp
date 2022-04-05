<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
</head>

<body class="ecommerce">
	<jsp:include page="header.jsp"></jsp:include><div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.jsp">HomePage</a></li>
				<li class="active">Order payment</li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN CONTENT -->
				<div class="col-md-8 col-md-offset-2">
					<h1>Alipay website payment experience portal</h1>
					<div class="content-form-page">
						<form role="form" class="form-horizontal form-without-legend" autocomplete="off" action="index/pay.action"
							method="post">
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Merchant order number ：</label>
								<div class="col-lg-8">
									<input type="text" name="WIDout_trade_no" id="WIDout_trade_no" required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="last-name">Order name ：</label>
								<div class="col-lg-8">
									<input type="text" name="WIDsubject" id="WIDsubject" required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="last-name">Payment amount ：</label>
								<div class="col-lg-8">
									<input type="text" name="WIDtotal_amount" id="WIDtotal_amount" required class="form-control">
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
									<input type="hidden" name="id" id="ordersid" value="${orders.ordersid}" /> <input type="hidden"
										name="basepath" id="basepath" value="<%=basePath%>" />
									<button id="pay" class="btn btn-primary" type="submit">Pay</button>
									<span class="note-help">If you click the "Pay" button, it means that you agree to the execution this time.</span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script language="javascript">
		function GetDateNow() {
			var vNow = new Date();
			var sNow = "";
			sNow += String(vNow.getFullYear());
			sNow += String(vNow.getMonth() + 1);
			sNow += String(vNow.getDate());
			sNow += String(vNow.getHours());
			sNow += String(vNow.getMinutes());
			sNow += String(vNow.getSeconds());
			sNow += String(vNow.getMilliseconds());
			document.getElementById("WIDout_trade_no").value = sNow;
			document.getElementById("WIDsubject").value = "${orders.ordercode}";
			document.getElementById("WIDtotal_amount").value = "${orders.total}";
		}
		GetDateNow();
	</script>
</body>
</html>
