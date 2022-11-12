package com.system.DeleteBusDetails;

import java.sql.Connection;
import java.sql.Statement;

import com.system.User.DBConnect;

public class DeleteInterfaceDbUtil {

	private static Connection con = null;
	private static Statement st = null;

	public static boolean deleteBusDetails(String bid) {

		boolean isDeleted = false;
		int ibid = Integer.parseInt(bid);

		try {
			con = DBConnect.getConnection();
			
			st = con.createStatement();

			String sql = "DELETE FROM busdetails WHERE bus_id = '" + ibid + "'";
			
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				isDeleted = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isDeleted;
	}
}
