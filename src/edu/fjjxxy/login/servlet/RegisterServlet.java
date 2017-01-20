package edu.fjjxxy.login.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjjxxy.login.Bean.CodeExchange;
import edu.fjjxxy.login.Bean.UserInfo;
import edu.fjjxxy.login.dbBean.UserOP;

public class RegisterServlet extends HttpServlet {
	 CodeExchange ce = new CodeExchange();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		UserInfo user;
		UserOP s ;
		
		String btnReg = request.getParameter("btnReg");
		
		//×¢²á°´Å¥ÊÂ¼þ
		if(btnReg!=null)
		{
			String username = ce.ChineseCoding(request.getParameter("username"));
			String password = ce.ChineseCoding(request.getParameter("password"));
			String sex = ce.ChineseCoding(request.getParameter("sex"));
			String hobby = ce.ChineseCoding(request.getParameter("hobby"));
			String ask = ce.ChineseCoding(request.getParameter("ask"));
			String answer= ce.ChineseCoding(request.getParameter("answer"));
		
			user = new UserInfo();
			user.setUsername(username);
			user.setPassword(password);
			user.setSex(sex);
			user.setHobby(hobby);
			user.setAsk(ask);
			user.setAnswer(answer);
			
			s = new UserOP();
			boolean addFlag = s.add(user);
			if(addFlag){
				response.sendRedirect("registerSuccess.jsp");
			}
			else{
				response.sendRedirect("register.jsp");
			}
		}	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}