package com.system.UpdateRouteDetails;

import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.system.User.DBConnect;
public class updateRouteDetailsdbUtil {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;

	public static List<route> fetchRouteDetails() {
		ArrayList<route> routelist = new ArrayList<route>();
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			
			String query = "select * from route";
			rs = st.executeQuery(query);
			
			int rowcount =  0;
			int objectcount = 0;
			
			if(rs.last()) {
				rowcount = rs.getRow();
				rs.beforeFirst();
			}
			
			route[] rt = new route[rowcount];
			
			while(rs.next()) {
				
				int routeID = rs.getInt(1);
				String startCity = rs.getString(2);
				String endCity = rs.getString(3);
				double price = rs.getDouble(4);
				
				rt[objectcount] = new route(routeID, startCity, endCity, price);
				routelist.add(rt[objectcount]);
				objectcount++;
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return routelist;
		
		
	}
	
	
	public static boolean updateroutedetails(String routeid, String startcity, String endcity, String price) {
		
		boolean isupdated = false;
		Connection con = null;
		Statement st = null;
		int rid = Integer.parseInt(routeid);
		double Dprice = Double.parseDouble(price);
			
		
		try {
			
			con = DBConnect.getConnection();
			st = con.createStatement();
			String query = "update route set routeid='"+rid+"' , price='"+Dprice+"' , start_City='"+startcity+"' , end_city='"+endcity+"' where routeid='"+rid+"'" ;
			int rs = st.executeUpdate(query);
			
			if(rs>0) {
				isupdated = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isupdated;
	}
}
