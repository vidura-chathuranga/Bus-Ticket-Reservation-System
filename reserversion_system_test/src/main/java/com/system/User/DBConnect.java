package com.system.User;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String URL = "jdbc:mysql://localhost:3306/reservation_ticket";
	private static String userName = "root";
	private static String password = "password";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(URL, userName, password);
			
		}catch(Exception e) {
			System.out.println("Database Connection is not established correctly!");
		}
		
		
		return con;
	}

}
