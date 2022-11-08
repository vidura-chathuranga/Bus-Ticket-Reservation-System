package com.system.bookSeat;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.system.Index.Bus;
/**
 * Servlet implementation class BookedSeatServlet
 */
@WebServlet("/bookedSeatServlet")
public class BookedSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id   = req.getParameter("busID");
		
		RequestDispatcher dispatcher = null;
		
		List<Bus> busDetails = BookSeatDbUtil.viewSeat(id);
		
		
		if(busDetails.isEmpty()) {
//			req.setAttribute("status", "There are no any bus details");
//			dispatcher = req.getRequestDispatcher("viewSeatDetails.jsp");
//			dispatcher.forward(req, resp);
//			
		}else {
			req.setAttribute("busdetails", busDetails);
			dispatcher = req.getRequestDispatcher("BusDetails.jsp");
			dispatcher.forward(req, resp);
		}
	}

	
       

	
}
