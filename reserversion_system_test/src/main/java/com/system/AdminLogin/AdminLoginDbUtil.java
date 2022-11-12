package com.system.AdminLogin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.system.User.DBConnect;

public class AdminLoginDbUtil {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	private static int AdminId;
	
	//this function returns the profile data
	public static List<Admin> displayProfileData(String email, String Password) {

		ArrayList<Admin> adminDetails = new ArrayList<Admin>();

		try {

			// create database link using database connection class
			con = DBConnect.getConnection();

			st = con.createStatement();

			String query = "SELECT * FROM admin WHERE email = '" + email + "' AND password = '" + Password + "'";

			rs = st.executeQuery(query);

			while (rs.next()) {

				int adminId = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String Email = rs.getString(4);
				String phone = rs.getString(5);
				String password = rs.getString(6);

				AdminId = adminId;

				Admin admin = new Admin(adminId, firstName, lastName, Email, phone, password);

				adminDetails.add(admin);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return adminDetails;

	}

	public static int getAdminId() {
		return AdminId;
	}

	public static List<Admin> getAdminDetailsById(int id) {

		ArrayList<Admin> adminDetails = new ArrayList<Admin>();

		try {
			con = DBConnect.getConnection();

			st = con.createStatement();

			String query = "SELECT * FROM admin WHERE adminId = '" + id + "'";

			rs = st.executeQuery(query);

			while (rs.next()) {

				int adminId = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String Email = rs.getString(4);
				String phone = rs.getString(5);
				String password = rs.getString(6);

				Admin admin = new Admin(adminId, firstName, lastName, Email, phone, password);

				adminDetails.add(admin);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminDetails;
	}
}
