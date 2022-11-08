package com.system.UpdateBusDetails;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.system.Index.Bus;

/**
 * Servlet implementation class UpdateBusDetails
 */
@WebServlet("/UpdateBusDetails")
public class UpdateBusDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Bus> busDetails = UpdateBusDetailsDbUtil.fetchBusDetails();
		
		RequestDispatcher dispatcher = null;
		
		if(busDetails.isEmpty()) {
			request.setAttribute("status", "Failed");
		}else {
			
			request.setAttribute("busDetails", busDetails);
			dispatcher = request.getRequestDispatcher("busUpdateDetails.jsp");
			dispatcher.forward(request, response);
		}
	}
       
 
	

}
