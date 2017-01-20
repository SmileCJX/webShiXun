package edu.fjjxxy.login.dbBean;

import java.sql.*;
import javax.swing.JOptionPane;;

public class Conndb {

	private Connection cn =null;
	
	public Connection getCon()
	{
		try {
			
			String url = "jdbc:mysql://localhost:3306/Log_System";
			Class.forName("com.mysql.jdbc.Driver");
			String username="root";
			String password = "";
			cn = DriverManager.getConnection(url, username, password);	
		} catch ( Exception e) {
			e.printStackTrace();
			return null;
		}
		
		return cn;	
	}
}
