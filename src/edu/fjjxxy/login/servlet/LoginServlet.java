package edu.fjjxxy.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjjxxy.login.dbBean.UserOP;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String checkboxes = request.getParameter("but");
		
		UserOP uop = new UserOP();
	    boolean f=	uop.checkUser(username, password);
	    if(f)
	    {
	    	if(checkboxes != null){
	    	    Cookie cookie=new Cookie(username,password); 
	    	    cookie.setMaxAge(60);
	    	    response.addCookie(cookie);
	    	}
	    	request.getSession().setAttribute("username", username);
	    	response.sendRedirect("loginSuccess.jsp?username="+username);
	    }
	    else{
	    	response.sendRedirect("loginFailure.jsp");
	    }
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
