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
				<li class="active">User Registration</li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN CONTENT -->
				<div class="col-md-8 col-md-offset-2">
					<h1>User Registration</h1>
					<div class="content-form-page">
						<form role="form" class="form-horizontal form-without-legend" autocomplete="off" action="index/register.action"
							method="post">
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">User Name</label>
								<div class="col-lg-8">
									<input type="text" name="username" id="username" placeholder="Please enter a user name." required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="last-name">Password</label>
								<div class="col-lg-8">
									<input type="password" name="password" id="password" placeholder="Please enter the password." required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Name</label>
								<div class="col-lg-8">
									<input type="text" name="realname" id="realname" placeholder="Please enter a name." required class="form-control">
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
									<input type="text" id="birthday" placeholder="Please enter the date of birth." name="birthday" onfocus="WdatePicker()"
										readonly="readonly" required class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">Contect</label>
								<div class="col-lg-8">
									<input type="text" name="contact" id="contact" placeholder="Please enter your contact information." required class="form-control">
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
									<button class="btn btn-primary" type="submit">Confirm registration</button>
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
