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
				<li><a href="">News Announcement</a></li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row">
				<!-- BEGIN CONTENT -->
				<div class="col-md-12">
					<div class="content-page">
						<c:forEach items="${articleList}" var="article">
							<ul>
								<li><a href="index/read.action?id=${article.articleid }">${article.title }</a><span style="float: right;">${article.addtime }</span></li>
							</ul>
							<hr>
						</c:forEach>
					</div>
				</div>
				<div class="text-right">${html }</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
