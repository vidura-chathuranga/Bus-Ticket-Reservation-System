package com.system.bookSeat;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.system.Index.Bus;
import com.system.User.DBConnect;

public class BookSeatDbUtil {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;

	public static List<Bus> viewSeat(String id) {

		ArrayList<Bus> viewSeat = new ArrayList<Bus>();

		try {
			con = DBConnect.getConnection();

			st = con.createStatement();

			int intId = Integer.parseInt(id);

			String query = "SELECT b.*, r.* FROM busdetails b, route r where bus_id = '" + intId + "' AND b.route_id = r.routeid";

			rs = st.executeQuery(query);

			if (rs.next()) {

				String name = rs.getString("bus_name");
				String no_plate = rs.getString("bus_no_plate");
				int seatCount = rs.getInt("seatcount");
				String facilities = rs.getString("facilities");
				int route_id = rs.getInt("route_id");
				int bookedSeatCount = rs.getInt("bookedSeatCount");
				String startPoint = rs.getString("start_city");
				String endPoint = rs.getString("end_city");
				double price = rs.getDouble("price");

				Bus bus = new Bus(intId, no_plate, name, seatCount, route_id, facilities, bookedSeatCount,startPoint,endPoint, price);

				viewSeat.add(bus);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return viewSeat;
	}
}
