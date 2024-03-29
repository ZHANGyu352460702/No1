<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'customer.jsp' starting page</title>

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
	<a href="/No1/manager/manager_register.action?type=insertCustomer">添加用户信息</a>
	<table border="1">
		<tr>
			<th>用户编号</th>
			<th>用户名</th>
			<th>密码</th>
			<th>手机号</th>
			<th colspan="2">操作</th>
		</tr>
		<c:forEach items="${customers }" var="c">
			<tr>
				<td>${c.cid }</td>
				<td>${c.cname}</td>
				<td>${c.password}</td>
				<td>${c.phone}</td>
				<td><a href="/No1/manager/manager_deleteCustomer.action?customer.cid=${c.cid }">删除</a></td>
				<td><a href="/No1/manager/manager_queryOne.action?customer.cid=${c.cid }">修改</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
