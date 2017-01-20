package edu.fjjxxy.login.dbBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.fjjxxy.login.Bean.UserInfo;



public class UserOP {
	
	private Connection cn=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	
	public void closedb(){
		try{
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(cn!=null){
				cn.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public boolean  checkUser(String username,String password){
		 boolean loginFlag = false;

		 try{
			 cn=new Conndb().getCon();
			 String sqlstr="select  * from user_info where username='"+username+"' and password ='"+password+"';";	
			 ps=cn.prepareStatement(sqlstr); 
			 rs=ps.executeQuery();
			 if(rs.next()){	
				 loginFlag = true;
			 }
		 }
		 catch(Exception e){
			 e.printStackTrace();
		 }finally{
			 this.closedb();
		 }

		 return loginFlag;
	}		 

public ArrayList<UserInfo> quire(String condition) {
		
		ArrayList<UserInfo> retList = new ArrayList<UserInfo>();
			cn = new Conndb().getCon();
			String sqlStr = "select * from user_info ; ";
			if(condition!="")
			{
				sqlStr = "select * from user_info where "+condition;
			} try {
				ps=cn.prepareStatement(sqlStr);
				rs= ps.executeQuery();
				while(rs.next())
				{
					UserInfo temp =  new UserInfo();
					temp.setId(rs.getInt(1));
					temp.setUsername(rs.getString(2));
					temp.setPassword(rs.getString(3));
					temp.setSex(rs.getString(4));
					temp.setHobby(rs.getString(5));
					temp.setAsk(rs.getString(6));
					temp.setAnswer(rs.getString(7));
					retList.add(temp);
				}	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally{
				closedb();
			}
			
		return retList;
	}
	
	public boolean add(UserInfo user)
	{
		boolean addFlag = false;
		 try{
			 cn=new Conndb().getCon();
			 String sqlstr="insert into user_info(username,password,sex,hobby,ask,answer) "
			 		+ "values('"+user.getUsername()+"','"+user.getPassword()+"','"+user.getSex()+"','"+user.getHobby()+"','"+user.getAsk()+"','"+user.getAnswer()+"');";
			 ps=cn.prepareStatement(sqlstr);
			 int rows = ps.executeUpdate();
			 if (rows > 0) 
			 { addFlag = true; }	
		 }
		 catch(Exception e)
		 {	 e.printStackTrace(); }
		 finally
		 {	 this.closedb(); }
		 return addFlag;
	}	
	
	public boolean update(UserInfo user)
	{
		boolean altFlag = false;
		 try{
			 cn=new Conndb().getCon();
			 String sqlstr="update user_info set  password='"+user.getPassword()+"' where id='"+user.getId()+"';";
			 ps=cn.prepareStatement(sqlstr);
			 int rows = ps.executeUpdate();
			 if (rows > 0) 
			 { altFlag = true; }
			 else{altFlag =false;}
		 }
		 catch(Exception e)
		 {	 e.printStackTrace();	 }
		 finally
		 {	 this.closedb(); }
		 return altFlag;
	}	
	
	public boolean delete(String username)
	{
		boolean delFlag = false;
		 try{
			 cn=new Conndb().getCon();
			 String sqlstr="delete from  user_info  where username='"+username+"';";
			 ps=cn.prepareStatement(sqlstr);
			 int rows = ps.executeUpdate();
			 if (rows > 0) 
			 {	 delFlag = true;	 }	
		    }
		 catch(Exception e)
		 {	 
			e.printStackTrace();	 
		 }
		 finally
		 {
			 this.closedb();
		 }
		 return delFlag;
	}	
	
}
