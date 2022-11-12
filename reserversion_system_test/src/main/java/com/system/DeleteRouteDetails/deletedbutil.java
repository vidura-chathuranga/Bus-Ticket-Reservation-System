package com.system.DeleteRouteDetails;

import java.sql.Connection;
import java.sql.Statement;

import com.system.User.DBConnect;

public class deletedbutil {
	private static Connection con = null;
	private static Statement st = null;
	
	public static boolean deleteroute(int routeid) {
		
		boolean isdeleted = false;
		try {
			
			con = DBConnect.getConnection();
			st = con.createStatement();
			
		String sql = "delete from route where routeid='"+routeid+"'";
		int rs = st.executeUpdate(sql);
		
		if(rs>0) {
			isdeleted = true;
		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isdeleted;
		
		
	}
}
