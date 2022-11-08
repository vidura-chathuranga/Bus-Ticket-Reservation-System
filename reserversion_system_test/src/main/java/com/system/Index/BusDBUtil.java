package com.system.Index;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.fabric.Response;
import com.system.User.DBConnect;

public class BusDBUtil {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;

	public static List<Bus> getAvailableBusDetails(String from, String to, String date) {
		
		
		ArrayList<Bus> busDetails = new ArrayList<Bus>();

		try {
			con = DBConnect.getConnection();

			st = con.createStatement();

			String query = "select b.*,r.routeid,r.price\r\n"
					+ "from busdetails b, route r, bus_unavailable bu\r\n"
					+ "where b.route_id = r.routeid AND b.bus_id = bu.bus_id "
					+ "AND r.start_City ='"+from+"' "
					+ "AND r.end_city = '"+to+"' AND bu.unavailable_date <> '"+date+"';";

			rs = st.executeQuery(query);
			
			int rowCount = 0;
			int objectCount = 0;

			if (rs.last()) {
				rowCount = rs.getRow();
				rs.beforeFirst();
			}
			
			Bus bus[] = new Bus[rowCount];
			
			while(rs.next()) {
				
				int id = rs.getInt("bus_id");
				String name = rs.getString("bus_name");
				String no_plate = rs.getString("bus_no_plate");
				int seatCount = rs.getInt("seatcount");
				String facilities = rs.getString("facilities");
				int route_id = rs.getInt("route_id");
				double route_price = rs.getDouble("price");
				int bookedSeatCount = rs.getInt("bookedSeatCount");
				
				bus[objectCount] = new Bus(id,no_plate,name,seatCount,route_id,facilities, route_price, bookedSeatCount);

				busDetails.add(bus[objectCount]);
				
				objectCount++;
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return busDetails;
	}
}
