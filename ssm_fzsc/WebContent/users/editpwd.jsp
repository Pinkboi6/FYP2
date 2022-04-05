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
				<li><a href="index/usercenter.action">User center</a></li>
				<li class="active">Modify password</li>
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
					<h1>Modify password</h1>
					<div class="content-form-page">
						<form role="form" class="form-horizontal form-without-legend" autocomplete="off" action="index/editpwd.action"
							method="post">
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">User Name</label>
								<div class="col-lg-8">
									${sessionScope.username }<input type="hidden" name="username" style="width: 160px" id="username"
										value="${sessionScope.username }" /> <input type="hidden" name="usersid" style="width: 160px" id="usersid"
										value="${sessionScope.usersid }" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Original password</label>
								<div class="col-lg-8">
									<input type="password" id="password" placeholder="Please enter the original password." name="password" required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">New Password</label>
								<div class="col-lg-8">
									<input type="password" id="newpassword" placeholder="Please enter a new password" name="newpassword" required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Confirm the password.</label>
								<div class="col-lg-8">
									<input type="password" id="repassword" placeholder="Confirm the password." name="repassword" required class="form-control">
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
									<button class="btn btn-primary" type="submit">Confirm & Save</button>
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
