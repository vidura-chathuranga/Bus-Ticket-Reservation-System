package com.system.DeleteBusDetails;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.system.Index.Bus;
import com.system.UpdateBusDetails.UpdateBusDetailsDbUtil;

/**
 * Servlet implementation class DeleteBusDetailsServlet
 */
@WebServlet("/deleteBus")
public class DeleteBusDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String busid = request.getParameter("busid");
		
		boolean isDeleted = DeleteInterfaceDbUtil.deleteBusDetails(busid);
		
		RequestDispatcher dispatcher = null;
		
		if( isDeleted == true) {
			List<Bus> busDetails = UpdateBusDetailsDbUtil.fetchBusDetails();
			
			request.setAttribute("busDetails",busDetails);
			request.setAttribute("isDeleted", "deleted");
			dispatcher = request.getRequestDispatcher("busUpdateDetails.jsp");
			dispatcher.forward(request, response);

		}
	}

}
