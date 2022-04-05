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

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.jsp">HomePage</a></li>
				<li><a href="index/usercenter.action">User Center</a></li>
				<li class="active">My Comment</li>
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
					<h1>My Comment</h1>
					<div class="goods-page">
						<div class="goods-data clearfix">
							<div class="table-wrapper-responsive">
								<table summary="Shopping cart">
									<thead>
										<tr>
											<th>Content</th>
											<th>Date</th>
											<th>Status</th>
											<th>Reply</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="x">
											<tr>
												<td>${x.contents }</td>
												<td>${x.addtime }</td>
												<td>${x.status }</td>
												<td>${x.reps }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
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
