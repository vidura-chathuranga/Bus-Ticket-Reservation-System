package com.system.InsertBusDetails;

import java.sql.Connection;
import java.sql.Statement;

import com.system.User.DBConnect;

public class InsertBusDetailsDbutil {
	private static Connection con = null;
	private static Statement st = null;
	
	public static boolean insertBusDetails(String noplate, String bname, String facilities,String seatcount, String bseatcount, String routeid) {
		boolean isInserted = false;
		
		int iseatcount = Integer.parseInt(seatcount);
		int ibseatcount = Integer.parseInt(bseatcount);
		int irouteid = Integer.parseInt(routeid);
		
		try {
			
			con = DBConnect.getConnection();
			
			st = con.createStatement();
			
			String sql = "INSERT INTO busdetails(bus_no_plate,bus_name,facilities,seatcount,route_id,bookedSeatCount) VALUES('"+noplate+"','"+bname+"','"+facilities+"','"+iseatcount+"','"+irouteid+"','"+ibseatcount+"')";
			
			int rs = st.executeUpdate(sql);
			
			if( rs > 0) {
				isInserted = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isInserted;
	}
}
