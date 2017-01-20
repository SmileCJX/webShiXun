package edu.fjjxxy.login.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import edu.fjjxxy.login.Bean.CodeExchange;
import edu.fjjxxy.login.Bean.UserInfo;
import edu.fjjxxy.login.dbBean.UserOP;

public class ForgetServlet extends HttpServlet {
	CodeExchange ce = new CodeExchange();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 request.setCharacterEncoding("utf-8");	
		 String username = ce.ChineseCoding(request.getParameter("username"));
		 String ask=request.getParameter("ask");
		 String answer =request.getParameter("answer");
		 String condition= "username='"+username+"' and ask='"+ask+"' and answer='"+answer+"'";
		 
		 UserOP u = new UserOP();
		 ArrayList<UserInfo> users=new ArrayList<UserInfo>();
		 users=u.quire(condition);
		 if(users.size()>0){			 
			int id=users.get(0).getId();
			String idstr= Integer.toString(id);
			request.setAttribute("resetid", idstr);
			RequestDispatcher dispatcher = request.getRequestDispatcher("resetPassword.jsp");
			dispatcher.forward(request, response);
		 }else{
//			JOptionPane.showMessageDialog(null, "用户名不正确，找回密码失败");
			response.sendRedirect("forget.jsp");
		 }	
	}

}
