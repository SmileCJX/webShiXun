<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">  
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
			padding: 0;line-height: 1.5em;font-family:Georgia;
         	font-family:Arial;color: #ffbb33;
			margin: 0;
		}
　　	</style>
	<script type="text/javascript">
		function check(){
			var userName = login.username.value;
    		var passWord = login.password.value;
    		if (userName == ""){
                alert("对不起，用户名不能为空!");
                return false;
            }
             if (passWord == ""){
                alert("对不起，登录密码不能为空!");
                return false;
            } 
            return true;
		}
	</script>
  </head>
  
  <body background="images/BackGround.jpg" style="text-align: center;">
      <center> 
      <br>  <br>  <br>  <br>  
  		<form action="LoginServlet" method="post" name="login" onSubmit="return check()">
		  <table  border="1" style="color:#880011" >
			  <tr>
			  	<td colspan="3" align="center"><h1>系统登录</h1></td>
			  </tr> 
			  <tr>
			  	<td align="center"><h3>用户名</h3></td>
			  	<td><input type="text" name="username" value=""/></td>
			  	<td><a href="register.jsp" style="color:#880011 ">注册用户</a></td>
			  </tr>
			  <tr>
			  	<td align="center"><h3>密&nbsp;&nbsp;&nbsp;&nbsp;码</h3></td>
			  	<td><input type="password" name="password" value=""/></td>
			  	<td><a href="forget.jsp" style="color:#880011 ">忘记密码?</a></td>
			  </tr>
			  <tr>
			  	<td colspan="3" align="center"><input type="checkbox" name="but" value="remember"/>记住用户名和密码</td> 
			  </tr>
			  <tr>
			  	<td colspan="3" align="center">
			  		<input type="submit" name="sub" value="登陆" style="color:#880011 "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  		<input type="reset" name="res" value="取消" style="color:#880011 "/>
			  	</td> 
			  </tr>
		  </table>
	  </form>
     </center> 
  </body>
</html>
