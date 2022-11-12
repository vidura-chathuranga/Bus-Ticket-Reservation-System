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
 * Servlet implementation class UpdateInterfaceServlet
 */
@WebServlet("/updateInterface")
public class UpdateInterfaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String busid = request.getParameter("busid");
		String noplate = request.getParameter("noplate");
		String busname = request.getParameter("busname");
		String facilities = request.getParameter("facilities");
		String seatcount = request.getParameter("seatcount");
		String bseatcount = request.getParameter("bseatcount");
		String routeid = request.getParameter("routeid");
		
		boolean isUpdated = UpdateBusDetailsDbUtil.updateBusDetails(busid, noplate, busname, facilities, seatcount, bseatcount, routeid);
		
		RequestDispatcher dispatcher = null;
		
		if( isUpdated == true) {
			
			List<Bus> busdetails = UpdateBusDetailsDbUtil.fetchBusDetails();
			request.setAttribute("busDetails", busdetails);
			request.setAttribute("status", "Success");
			dispatcher = request.getRequestDispatcher("busUpdateDetails.jsp");
			dispatcher.forward(request, response);
		}
	}

}
