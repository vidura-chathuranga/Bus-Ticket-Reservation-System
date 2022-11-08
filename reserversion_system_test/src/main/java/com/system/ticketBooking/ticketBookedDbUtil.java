package com.system.ticketBooking;

import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import com.system.Index.Bus;
import com.system.User.DBConnect;


public class ticketBookedDbUtil {
	private static Connection con = null;
	private static Statement st = null;
	private static int rowCount = 0;
	private static int updateRowCount = 0;
	
	public static boolean ticketBooking(int userId, int busId, int routeId, double price,int seatCount,int bookedSeatCount) {
		
		boolean isTicketBooked = false;
		
		try {
			
			con = DBConnect.getConnection();
			
			st = con.createStatement();
			
			String query = "INSERT INTO ticket VALUES(0,'"+userId+"','"+busId+"','"+routeId+"','"+seatCount+"','"+price+"')";
			rowCount = st.executeUpdate(query);

			if(rowCount == 1) {
				isTicketBooked = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isTicketBooked;
	}
	
	public static boolean updateBusDetails(int busId,int qty, int bookedSeatCount) {
		boolean isUpdated = false;
		
		int currentBookedSeatCount =  bookedSeatCount + qty;
		try {
			st = con.createStatement();
			
			String query = "UPDATE busDetails SET bookedSeatCount = '"+currentBookedSeatCount+"' WHERE bus_id='"+busId+"'";
			
			int updateRowCount = st.executeUpdate(query);
			
			if(updateRowCount == 1) {
				
				isUpdated = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isUpdated;
	}
	
	
}
