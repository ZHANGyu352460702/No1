<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'updateCustomer.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form action="/No1/manager/manager_${type }.action" method="post">
		<input type="hidden" name="customer.cid" value="${customer.cid }">
		用户名<input type="text" name="customer.cname" value="${customer.cname }">
		<br> 密码<input type="password" name="customer.password"
			value="${customer.password }"> <br> 电话<input type="text"
			name="customer.phone" value="${customer.phone }"> <br> <input
			type="submit" value="提交">
	</form>


</body>
</html>
