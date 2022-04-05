<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
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
<script type="text/javascript" src="js/goods.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body class=" theme-blue">
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content">
		<div class="header">
			<h1 class="page-title">Edit product information</h1>
		</div>
		<div class="main-content">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div id="myTabContent" class="tab-content">
						<form action="goods/updateGoods.action" name="myform" method="post" onsubmit="return check()" class="form">

							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>Product Mame</label> <input type="text" name="goodsname" class="form-control" id="goodsname"
										value="${goods.goodsname}" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>Pic</label>
									<script type="text/javascript" src="js/selimage.js"></script>
									<input class="form-control" type="text" name="image" value="${goods.image}" id="image" onclick="selimage();"
										readonly="readonly" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>Product Type</label> <select name="cateid" class="form-control" id="cateid"><c:forEach
											items="${cateList}" var="cate">
											<option value="${cate.cateid}">${cate.catename }</option>
										</c:forEach></select>
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>Price</label> <input type="text" name="price" class="form-control" id="price" value="${goods.price}" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>是否特价</label> <select class="form-control" name="special" id="special"><option value="Yes">Yes</option>
										<option value="No">No</option></select>
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>是否推荐</label> <select class="form-control" name="recommend" id="recommend"><option value="Yes">Yes</option>
										<option value="No">No</option></select>
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>Stock</label> <input type="text" name="storage" class="form-control" id="storage" value="${goods.storage}" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>Product Price</label>
									<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
									<textarea cols="80" name="contents" id="contents" rows="10">${goods.contents} </textarea>
									<script type="text/javascript">
										CKEDITOR.replace('contents', {
											language : 'zh-cn'
										});
									</script>
								</div>
							</div>
							<div>
								<input type="hidden" name="goodsid" id="goodsid" value="${goods.goodsid}" /><input type="hidden" name="addtime"
									id="addtime" value="${goods.addtime}" /> <input type="hidden" name="sellnum" id="sellnum"
									value="${goods.sellnum}" /> <input type="hidden" name="hits" id="hits" value="${goods.hits}" />

								<button type="submit" id="sub" class="btn btn-primary">Save & Sumit</button>
								&nbsp;&nbsp;&nbsp;
								<button type="reset" id="res" class="btn btn-primary">Cancel & Reset</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

