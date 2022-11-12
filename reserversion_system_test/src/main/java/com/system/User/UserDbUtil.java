package com.system.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDbUtil {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;

	public static boolean registerUser(String fname, String lname, String email, String phone, String pwd) {

		boolean isCreateAccount = false;
		try {

			// Using DBConnect class and Create connection between the util class and the
			// database table
			con = DBConnect.getConnection();

			st = con.createStatement();

			String query = "INSERT INTO users(fname,lname,phone,email, password)VALUES('" + fname + "','" + lname
					+ "','" + phone + "','" + email + "','" + pwd + "')";

			int rowCount = st.executeUpdate(query); // 1 returns when table is updated otherwise returns 0

//			dispatcher = request.getRequestDispatcher("register.jsp");//set the path to the forward point

			if (rowCount > 0) {
				isCreateAccount = true;

			} else {
				isCreateAccount = false;

			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			try {
				con.close();// close the connection
			} catch (SQLException e) {

				e.printStackTrace();// if connection close failed then print stacktrace
			}
		}

		return isCreateAccount;
	}

	// userloggIn Function
	public static boolean loginUser(String email, String password) {
		boolean isLoggedIn = false;

		try {

			con = DBConnect.getConnection();

			st = con.createStatement();

			String query = "SELECT * FROM users WHERE email = '" + email + "' AND password = '" + password + "'";

			rs = st.executeQuery(query);

			if (rs.next()) {

				isLoggedIn = true;

				int userId = rs.getInt(1);
				String fname = rs.getString(2);
				
				User.setId(userId);
				User.setFirstName(fname);

			} else {
				isLoggedIn = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				con.close();// close the connection
			} catch (SQLException e) {

				e.printStackTrace();// if connection close failed then print stacktrace
			}
		}

		return isLoggedIn;
	}
	
//	Update User Profile
	
	public static boolean updateProfile(int id,String fname , String lname , String email , String phone , String password) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			
			String sql = "update users set fname = '"+fname+"' ,lname = '"+lname+"' , email = '"+email+"' , "
					+ "phone= '"+phone+"' , password = '"+password+"'"
					+"where id = '"+id+"'";
			
			
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	//Delete User Profile
	
	public static boolean deleteUser(String id) {
		
		int intId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			st = con.createStatement();
			
			String sql = "DELETE FROM users WHERE id ='"+intId+"'";
			int rs =st.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
		
	}


}
