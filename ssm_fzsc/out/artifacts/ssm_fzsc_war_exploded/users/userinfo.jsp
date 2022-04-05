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
				<li class="active">Personal Information</li>
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
					<h1>Personal Information</h1>
					<div class="content-form-page">
						<form role="form" class="form-horizontal form-without-legend" autocomplete="off" action="index/personal.action"
							method="post">
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">User Name</label>
								<div class="col-lg-8">
									${sessionScope.username }<input type="hidden" name="username" id="username"
										value="${sessionScope.users.username }" /> <input type="hidden" name="usersid" id="usersid"
										value="${sessionScope.users.usersid }" /> <input type="hidden" name="regdate" id="regdate"
										value="${sessionScope.users.regdate }" /> <input type="hidden" name="password" id="password"
										value="${sessionScope.users.password }" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Name</label>
								<div class="col-lg-8">
									<input type="text" name="realname" id="realname" value="${sessionScope.users.realname }" required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Sex</label>
								<div class="col-lg-8">
									<label class="radio-inline"> <input type="radio" value="Male" name="sex">Male
									</label> <label class="radio-inline"> <input type="radio" checked="checked" value="Female" name="sex"> Female
									</label>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Date of birth</label>
								<div class="col-lg-8">
									<input type="text" id="birthday" value="${sessionScope.users.birthday }" name="birthday" onfocus="WdatePicker()"
										readonly="readonly" required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Contect</label>
								<div class="col-lg-8">
									<input type="text" name="contact" id="contact" value="${sessionScope.users.contact }" required class="form-control">
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
									<button class="btn btn-primary" type="submit">Confirm & save</button>
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
