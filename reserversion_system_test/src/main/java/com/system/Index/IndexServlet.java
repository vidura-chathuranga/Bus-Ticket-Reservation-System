package com.system.Index;

import com.system.User.DBConnect;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/index")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String From = request.getParameter("from");
		String To = request.getParameter("to");
		String Date = request.getParameter("date");

		RequestDispatcher dispatcher = null;
		
		List<Bus> busDetails =  BusDBUtil.getAvailableBusDetails(From, To, Date);
		
		if(busDetails.isEmpty()) {
			
			request.setAttribute("busStatus", "NoBus");
			dispatcher = request.getRequestDispatcher("result.jsp");
			dispatcher.forward(request, response);
			
		}else {
			request.setAttribute("BusDetails", busDetails);
			dispatcher = request.getRequestDispatcher("result.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
