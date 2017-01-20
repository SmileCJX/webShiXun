<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="images/BackGround.jpg" style="text-align: center;">
   <br> <br> <br> <br> <br>
  	<div style="text-align: center;">
		<h2 style="color:#880011 ">登陆成功</h2>
		<%	
			if(session.getAttribute("username")!=null){
		%>
			<h3 style="color:#880011 "><%=session.getAttribute("username")%>,welcome!</h3>
		<%
			} else {	
		%>
          <h3><a href="index.jsp"style="color:#880011 ">用户注销</a>！</h3>
		<% 
			}
		%>
	</div>
  </body>
</html>
