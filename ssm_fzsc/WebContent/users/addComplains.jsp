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
				<li class="active">User Comments</li>
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
					<h1>User Comments</h1>
					<div class="content-form-page">
						<form role="form" class="form-horizontal form-without-legend" autocomplete="off"
							action="index/addComplains.action" method="post">
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Message content</label>
								<div class="col-lg-8">
									<textarea style="height: 120px;" placeholder="Please enter the message content" name="contents" id="contents" required
										class="form-control"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
									<button class="btn btn-primary" type="submit">confirm submission</button>
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
</body>
</html>
