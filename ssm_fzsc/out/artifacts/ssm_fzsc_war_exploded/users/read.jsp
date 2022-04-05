<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!doctype html>
<html lang="zh_CN">
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
				<li><a href="index/article.action">Announcement</a></li>
				<li class="active">${article.title }</li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row">
				<!-- BEGIN CONTENT -->
				<div class="col-md-12">
					<div class="content-page">
						<h1 class="text-center">${article.title }</h1>
						<hr>
						<div class="row">
							<div class="col-md-6 col-md-offset-4">
								<img src="${article.image }" alt="" width="450" height="450" />
							</div>
						</div>
						${article.contents }
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
