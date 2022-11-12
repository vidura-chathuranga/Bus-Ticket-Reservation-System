package com.system.InsertRouteDetails;

import java.sql.Connection;
import java.sql.Statement;

import com.system.User.DBConnect;

public class insertroutedetailsdbUtil {
	private static Connection con = null;
	private static Statement st = null;

	public static boolean insertdetials(String routeid, String startcity, String endcity, String price) {

		boolean isinserted = false;

		int rid = Integer.parseInt(routeid);
		double rprice = Double.parseDouble(price);
		try {

			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "insert into route values('" + rid + "' , '" + startcity + "' , '" + endcity + "', '" + rprice
					+ "')";
			int rs = st.executeUpdate(sql);

			if (rs > 0) {

				isinserted = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isinserted;

	}
}
