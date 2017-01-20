package edu.fjjxxy.login.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import edu.fjjxxy.login.Bean.CodeExchange;
import edu.fjjxxy.login.Bean.UserInfo;
import edu.fjjxxy.login.dbBean.UserOP;

public class ResetServlet extends HttpServlet {
	CodeExchange ce = new CodeExchange();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		UserOP u = new UserOP();

		String password = ce.ChineseCoding(request.getParameter("password"));		
		String resetid = ce.ChineseCoding(request.getParameter("resetid"));
		UserInfo user=new UserInfo();
		user.setPassword(password);		
		user.setId( Integer.parseInt(resetid) );
		
		UserOP s=new UserOP();
		boolean altFlag = s.update(user);
		if(altFlag){
			JOptionPane.showMessageDialog(null, "修改成功");
			response.sendRedirect("index.jsp");
		}else{
			JOptionPane.showMessageDialog(null, "修改失败");
		}
	}

}
