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
				<li><a>User Center</a></li>
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
				
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
