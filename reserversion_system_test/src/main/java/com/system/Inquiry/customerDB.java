package com.system.Inquiry;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.system.User.DBConnect;

public class customerDB {
	
	  public boolean insert(customer customer1) {
		
		  boolean result = false;
	    Connection con = DBConnect.getConnection();
	    
	    String sql = "insert into customer values(?, ?, ?, ?, ?, ?)";
	    try {
	    	
	      PreparedStatement ps = con.prepareStatement(sql);
	      ps.setString(1, customer1.getFirstname());
	      ps.setString(2, customer1.getLastname());
	      ps.setString(3, customer1.getEmail());
	      ps.setString(4, customer1.getPhone());
	      ps.setString(5, customer1.getMessage());
	      ps.setInt(6, 0);
	       
	      int rs = ps.executeUpdate();
	      
	      if( rs > 0) {
	    	  result = true;
	      }
	      
	    } catch (SQLException e) {
	      
	      e.printStackTrace();
	    }
	    
	    return result;
	  }

}
