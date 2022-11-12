package com.system.InsertBusDetails;

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
 * Servlet implementation class InsertBusDetails
 */
@WebServlet("/insertBusDetails")
public class InsertBusDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String noplate = request.getParameter("noplate");
		String busname = request.getParameter("busname");
		String facilities = request.getParameter("facilities");
		String seatcount = request.getParameter("seatcount");
		String bseatcount = request.getParameter("bseatcount");
		String routeid = request.getParameter("routeid");
		
		boolean isInserted = InsertBusDetailsDbutil.insertBusDetails(noplate, busname, facilities, seatcount, bseatcount, routeid);
		
		RequestDispatcher dispatcher = null;
		
		if(isInserted == true) {
			
			List<Bus> busdetails = UpdateBusDetailsDbUtil.fetchBusDetails();
			request.setAttribute("busDetails", busdetails);
			request.setAttribute("isInserted", "inserted");
			dispatcher = request.getRequestDispatcher("busUpdateDetails.jsp");
			dispatcher.forward(request, response);
		}
	}

}
