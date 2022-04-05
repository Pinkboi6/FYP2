<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="en">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome To Use Background Management System</title>
<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
<script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
<link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
<script type="text/javascript">
	function checkLogin() {
		var username = document.myform.username.value;
		var password = document.myform.password.value;
		if (username == '') {
			alert('please enter user name');
			document.myform.username.focus();
			return false;
		}
		if (password == '') {
			alert('Please enter the password');
			document.myform.password.focus();
			return false;
		}
	}
</script>
<script type="text/javascript">
	$(function() {
		var match = document.cookie.match(new RegExp('color=([^;]+)'));
		if (match)
			var color = match[1];
		if (color) {
			$('body').removeClass(function(index, css) {
				return (css.match(/\btheme-\S+/g) || []).join(' ')
			})
			$('body').addClass('theme-' + color);
		}

		$('[data-popover="true"]').popover({
			html : true
		});

	});
</script>
<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
	color: #fff;
}
</style>
</head>
<body class="theme-blue">
	<div class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> 欢迎使用网站后台管理系统</span></a>
		</div>

		<div class="navbar-collapse collapse" style="height: 1px;"></div>
	</div>



	<div class="dialog">
		<div class="panel panel-default">
			<p class="panel-heading no-collapse">Welcome To Use Background Management system</p>
			<div class="panel-body">
				<form action="<%=basePath%>admin/login.action" name="myform" method="post" onSubmit="return checkLogin()">
					<div class="form-group">
						<label>User Name</label> <input type="text" name="username" id="username" placeholder="please enter user name"
							class="form-control span12" />
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" name="password" id="password" placeholder="Please enter the password"
							class="form-controlspan12 form-control" />
					</div>
					<input type="submit" value="Login" class="btn btn-primary pull-right">
					<div class="clearfix"></div>
				</form>
			</div>
		</div>
	</div>
	<script src="lib/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>
</body>
</html>