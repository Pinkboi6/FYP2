<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<li class="list-group-item clearfix"><a href="index/usercenter.action"><i class="fa fa-angle-right"></i>User Center</a></li>
<li class="list-group-item clearfix"><a href="index/userinfo.action"><i class="fa fa-angle-right"></i>Personal information</a></li>
<li class="list-group-item clearfix"><a href="index/prePwd.action"><i class="fa fa-angle-right"></i>Change Password</a></li>
<li class="list-group-item clearfix"><a href="index/showOrders.action"><i class="fa fa-angle-right"></i>My Order</a></li>
<li class="list-group-item clearfix"><a href="index/preComplains.action"><i class="fa fa-angle-right"></i>User Comments</a></li>
<li class="list-group-item clearfix"><a href="index/showComplains.action"><i class="fa fa-angle-right"></i>My Message</a></li>
<li class="list-group-item clearfix"><a href="index/exit.action"><i class="fa fa-angle-right"></i>Logout</a></li>
