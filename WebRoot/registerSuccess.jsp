<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'registerSuccess.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>

  <body style="text-align: center;" background="images/BackGround.jpg">
  	<center>
  	<br><br><br><br><br>
		<h1 style="color:#880011 ">用户注册成功！</h1>
		<%
			response.setHeader("refresh", "3;url=index.jsp");
		 %>
		<h2 style="color:#880011 ">
			3秒后自动跳转到登录界面,<br>
			 或按<a style="color:#eeb " href="index.jsp">这里</a>跳转回登录界面
		</h2> 
		
	</center>
  </body>
</html>
