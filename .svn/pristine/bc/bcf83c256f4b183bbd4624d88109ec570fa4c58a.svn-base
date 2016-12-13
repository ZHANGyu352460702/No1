<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manager.jsp' starting page</title>
    
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
    <form action="/No1/manager/manager_login.action" method="post">
    	管理员<input type="text" name="admin.name" id="name">
    	<font id="tips" size="3"></font>
    	<br>
    	密码<input type="password" name="admin.password">
    	<br>
    	<input type="submit" value="登录">
    </form>
  </body>
  <script type="text/javascript" src="/No1/js/jquery-2.1.0.js"></script>
	<script type="text/javascript">
		$("#name").blur(function() {
			var adminName = $(this).val();
			$.ajax({
				url : "/No1/manager/manager_managerCheck.action",
				data : {
					"admin.name" : adminName
				},
				type : "get",
				success : function(result) {
					if (result.ismanagered > 0) {
						$("#tips").text("");
					} else {
						$("#tips").text("管理员错误");
						$("#tips").attr("color", "red");
					}
				}
			});
		});
	</script>
  
  
</html>
