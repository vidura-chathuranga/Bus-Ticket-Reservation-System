package com.system.userProfile;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.system.User.User;
import com.system.User.DBConnect;

public class userUpdateDbUtil {
	
	private static int CurrentUserID = User.getId();
	private static ResultSet rs = null;
	private static Connection con = null;
	private static Statement st;
	
	public static List<updateUser> fetchUserDetails(){
		
		ArrayList<updateUser> userDetails = new ArrayList<updateUser>();
		
		try {
			
			con = DBConnect.getConnection();
			
			st = con.createStatement();
			
			String sql = "Select * from users where id='"+CurrentUserID+"'";
			
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);
				
				updateUser upu = new updateUser(id,fname,lname,phone,email,password);
				
				userDetails.add(upu);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return userDetails;
	}
}
