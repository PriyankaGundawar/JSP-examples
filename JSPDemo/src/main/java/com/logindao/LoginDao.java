package com.logindao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	
	String url = "jdbc:mysql://localhost:3306/priyadb";
	String username = "root";
	String password ="root";
	String sql = "select * from userlogin where uname=? and pass=?";
	public boolean logDao(String uname, String pass) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
			
		
		return false;
		
	}

}
