<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'resetPassword.jsp' starting page</title>
    
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
	<script type="text/javascript">
		function check(){		
				var passWord = resetPassword.password.value;
	    		var quePassword = resetPassword.quepassword.value;
	    	 	if (passWord == ""){
	                alert("对不起，密码不能为空!");
	                return false;
	            } else if(passWord.length < 6){
	            	alert("对不起，密码长度不能小于6！");
	            	return false;
	            }
	            if (quePassword == ""){
	                alert("对不起，确认密码不能为空!");
	                return false;
	            }
	           else if(passWord != quePassword){
	            	alert("密码和确定密码不一致!");
	            	return false;
	            }
				return true;
		}
	</script>
  </head>

  <body background="images/BackGround.jpg" style="text-align: center;">
  <%
  	String resetid="0";
  	resetid=(String)request.getAttribute("resetid");
   %>
  <center> 
  <br><br><br><br><br>
  <form action="ResetServlet"  name="resetPassword" method="post"   onSubmit="return check()" >
  	<input type="hidden" name="resetid" value="<%=resetid %>">
  	<table style="color:#880011 " border="1">
	  <tr>
	 	 <td colspan="3" align="center"><h2>重置密码</h2></td>
	  </tr>
	  
	  <tr>
		  <td>密码</td>
		  <td><input type="password" name="password"  /></td>
	  </tr>
	  
	   <tr>
		  <td>确定密码</td>
		  <td><input type="password" name="quepassword" /></td>
	  </tr>
	  
	  <tr>
		  <td colspan="3" align="center">
			  <input type="submit" name="sub" value="确定" style="color:#880011 "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="reset" name="res" value="取消" style="color:#880011 "/>
			</td> 
	  </tr>
 	</table>
 </form>
 </center>
 </body>
</html>
