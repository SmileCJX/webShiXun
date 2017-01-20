<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
    <style type="text/css"> 
　		body{
			margin: 0;padding: 0;line-height: 1.5em;font-family:Georgia;
         	font-family:Arial;color: #ffbb33;
		}
　　	</style>
    <script type="text/javascript">
    	function check() {
    		var userName = register.username.value;
    		var passWord = register.password.value;
    		var passWord1 = register.password1.value;
    	 	if (userName == ""){
                alert("对不起，用户名不能为空!");
                return false;
            } else if(userName.length < 3 || userName.length > 18){
            	alert("对不起，用户名长度为3到18位！");
            	return false;
            }
            if (passWord == ""){
                alert("对不起，注册密码不能为空!");
                return false;
            } else if(passWord.length < 6 ){
            	alert("对不起，注册密码长度不能少于6位！");
            	return false;
            } else if(passWord != passWord1){
            	alert("密码和确定密码不一致!");
            	return false;
            }
			return true;
		}
    </script>
  </head>
   <br> <br> <br>
  <body style="text-align: center;" background="images/BackGround.jpg">
  	<center>
	  	<form action="RegisterServlet" name="register" method="post" onSubmit="return check()">
	  		<table border="1" border="0" style="color:#880011 ">
	  			<tr>
	  				<td colspan="2" align="center"><h1>新用户注册</h1></td>
	  			</tr>
	  			<tr>
	  				<td align="center"><h2>用户名</h2></td>
	  				<td><input type="text" name="username" size="30" style="height: 43px; "></td>
	  			</tr>
	  			<tr>
	  				<td align="center"><h2>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</h2></td>
	  				<td><input type="password" name="password" size="30" style="height:43px;"></td>
	  			</tr>
	  			<tr>
	  				<td align="center"><h2>确认密码</h2></td>
	  				<td><input type="password" name="password1" size="30" style="height:43px; "></td>
	  			</tr>
	  			<tr>
	  				<td align="center"><h2>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</h2></td>
	  				<td>
	  					<input type="radio" name="sex" value="男" style="height: 32px; width: 29px; ">男
	  					<input type="radio" name="sex" value="女" style="height: 32px; width: 29px; ">女
	  				</td>
	  			</tr>
	  			<tr>
	  				<td align="center"><h2>爱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好</h2></td>
	  				<td><input type="text" name="hobby" size="30" style="height: 43px; "></td>
	  			</tr>
	  			<tr>
	  				<td align="center"><h2>问&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题</h2></td>
	  				<td>
	  					<select name="ask" size="1">
	  						<option  value="你的属相是什么" selected="selected">你的属相是什么</option>
	  						<option value="你的父亲的名字是">你的父亲的名字是</option>
	  						<option value="你的母亲的名字是">你的母亲的名字是</option>
	  						<option value="你小学所在的学校是">你小学所在的学校是</option>
	  						<option value="你最喜欢的体育运动是">你最喜欢的体育运动是</option>
	  						<option value="你高中的班主任名字是">你高中的班主任名字是</option>
	  					</select>
	  					<font color="#eebb22">找回密码时使用</font>
	  				</td>
	  			</tr>
	  			<tr>
	  				<td align="center"><h2>答&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;案</h2></td>
	  				<td><input type="text" name="answer" size="30" style="height:43px;"></td>
	  			</tr>
	  			<tr>
	  				<td colspan="2" align="center">
	  					<input type="submit" name="btnReg" value=""  style="height: 48px; width: 166px;border-color:blue ; background-image:url(images/register.png)"
	  					>
	  				</td>
	  			</tr>
	  		</table>
	  	</form>
	  	我已经注册，请直接<a href="index.jsp"  style="color:#eebb22 ">登入</a>
   	</center>
  </body>
</html>
