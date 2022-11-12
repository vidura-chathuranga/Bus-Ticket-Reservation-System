package com.system.UpdateBusDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.system.User.DBConnect;
import com.system.Index.Bus;

public class UpdateBusDetailsDbUtil {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static List<Bus> fetchBusDetails() {
		
		ArrayList<Bus> busdetails = new ArrayList<Bus>();
		
		try {
			
			con = DBConnect.getConnection();
			
			st = con.createStatement();
			
			String query= "SELECT * FROM busdetails";
			
			rs = st.executeQuery(query);
			
			int rowCount = 0;
			int objectCount = 0;
			
			if (rs.last()) {
				rowCount = rs.getRow();
				rs.beforeFirst();
			}
			
			Bus [] bs = new Bus[rowCount];
			
			while(rs.next()) {
				
				int busId = rs.getInt(1);
				String busNoPlate = rs.getString(2);
				String busName = rs.getString(3);
				String facilities = rs.getString(4);
				int seatCount = rs.getInt(5);
				int routeId = rs.getInt(6);
				int bookedSeatCount = rs.getInt(7);
				
				bs[objectCount] = new Bus(busId, busNoPlate, busName,seatCount, routeId,facilities , bookedSeatCount);
				
				busdetails.add(bs[objectCount]);
				
				objectCount++;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return busdetails;
	}
	
	public static boolean updateBusDetails(String bid, String noplate, String bname, String facilities,String seatcount, String bseatcount, String routeid) {
		
		boolean isUpdated = false;
		Connection con = null;
		Statement st = null;
		
		int ibid = intConverter(bid);
		int iseatcount = intConverter(seatcount);
		int ibseatcount = intConverter(bseatcount);
		int irouteid = intConverter(routeid);
		
		try {
			
			con = DBConnect.getConnection();
			
			st = con.createStatement();
			
			String sql = "UPDATE busdetails SET bus_id = '"+ibid+"', bus_no_plate = '"+noplate+"', bus_name = '"+bname+"',facilities = '"+facilities+"', seatcount = '"+iseatcount+"', bookedSeatCount = '"+ibseatcount+"', route_id = '"+irouteid+"' where bus_id = '"+ibid+"'";
			
			int rs = st.executeUpdate(sql);
			
			if( rs > 0) {
				
				isUpdated = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isUpdated;
	}
	
	private static int intConverter(String value) {
		int intValue;
		
		intValue = Integer.parseInt(value);
		
		return intValue;
	}
}
