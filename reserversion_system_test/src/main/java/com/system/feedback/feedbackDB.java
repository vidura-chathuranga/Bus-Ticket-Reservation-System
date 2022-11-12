package com.system.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.system.User.DBConnect;

public class feedbackDB {
	private String dburl = "jdbc:mysql://localhost:3306/inquirydb";
	private String dbname = "root";
	private String dbpassword = "123456789";
	private String dbdriver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbdriver) {
		
		 try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			 
			e.printStackTrace();
		}
	}

	public Connection getConnection() {

		Connection con = null;
		try {
			con = DriverManager.getConnection(dburl, dbname, dbpassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public boolean insert(feedback customer1) {
		Connection con = DBConnect.getConnection();
		boolean feedback =  false;
		String sql = "insert into feedback values(?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setString(2, customer1.getFirstname());
			ps.setString(3, customer1.getLastname());
			ps.setString(4, customer1.getEmail());
			ps.setString(5, customer1.getPhone());
			ps.setString(6, customer1.getMessage());
			ps.setString(7, customer1.getExperience());
			 
			
		int rs = ps.executeUpdate();
			
			
			if(rs>0 ) {
				
				feedback = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 
		}
		return feedback;
	}
}
