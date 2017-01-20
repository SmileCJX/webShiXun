<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css"> 
　		body{
			margin: 0;padding: 0;line-height: 1.5em;font-family:Georgia;
         	font-family:Arial;color: #ffbb33;
		}
　　	</style>
  </head>
 
  <body background="images/BackGround.jpg" style="text-align: center;">
     	<br>	   	<br>   	<br>   	<br>   	<br>
  <form action="ForgetServlet" method="post" >
   	<table align="center" style="color:#880011 " border="1">
   		<tr >
   			<td colspan="2" align="center"><h2>找回密码</h2></td>
   		</tr>
   		<tr>
   			<td>用户名：</td>
   			<td><input type="text" name="username" size="23"></td>
   		</tr>
   		<tr>
   			<td>问题：</td>
 			<td>
 				<select name="ask" size="1">
	  				<option  selected="selected">你的属相是什么</option>
					<option >你的父亲的名字是</option>
					<option >你的母亲的名字是</option>
					<option >你小学所在的学校是</option>
					<option >你最喜欢的体育运动是</option>
					<option >你高中的班主任名字是</option>
	  			</select>
	  		</td>			
   		</tr>
   		<tr>
   			<td>答案：</td><td><input type="text" name="answer" size="23"></td>
   			
   		</tr>
   		<tr >
   			<td colspan="2" align="center">
   				<input type="submit" name="btnOK" value="找回密码" style="color:#880011 ">&nbsp;&nbsp;
   				<input type="reset" name="btnCancel" value="取消" style="color:#880011 ">
   			</td>
   		</tr>
   	</table>
 </form>
 </body>
</html>
