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
import com.system.Index.BusDBUtil;

/**
 * Servlet implementation class fetchAllBusDetails
 */
@WebServlet("/fetchAllDetails")
public class fetchAllBusDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = null;
		
		List<Bus> busDetails = UpdateBusDetailsDbUtil.fetchBusDetails();
		
		if(!(busDetails.isEmpty())){
			
			req.setAttribute("busDetails", busDetails);
			dispatcher = req.getRequestDispatcher("busUpdateDetails.jsp");
			dispatcher.forward(req, resp);
		}
	}
       

	
}
