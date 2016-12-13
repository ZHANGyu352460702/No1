<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
  		<form action="/No1/customer/customer_password.action" method="post">
  		请输入你的用户名<input type="text" name="customer.cname">
  		<br>
  		请输入你的手机号<input type="text" name="customer.phone" id="phone">
  		<font id="tips" size="3"></font>
  		<br>
  		你的密码是   ${userInfo1.password }
  		<br>
  		<input type="submit" value="查询">
  		</form>
  </body>
  
  <script type="text/javascript" src="/No1/js/jquery-2.1.0.js"></script>
	<script type="text/javascript">
		$("#phone").blur(function() {
			var phone = $(this).val();
			$.ajax({
				url : "/No1/customer/customer_phoneCheck.action",
				data : {
					"customer.phone" : phone
				},
				type : "get",
				success : function(result) {
					if (result.isUsed > 0) {
						 $("#tips").text("");
					} else {
						$("#tips").text("你输入的手机号不匹配");
						$("#tips").attr("color", "red");
					}
				}
			});
		});
	</script>
</html>
