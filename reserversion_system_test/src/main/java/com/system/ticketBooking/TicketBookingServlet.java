package com.system.ticketBooking;

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
import com.system.bookSeat.BookSeatDbUtil;
/**
 * Servlet implementation class TicketBookingServlet
 */
@WebServlet("/ticketBooking")
public class TicketBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = null;
		
		double ticketPrice = Double.parseDouble(request.getParameter("tprice"));
		int bus_id = Integer.parseInt(request.getParameter("bus_id"));
		int noOfSeats = Integer.parseInt(request.getParameter("noOfSeat"));
		int userId = Integer.parseInt(request.getParameter("user_id"));
		int routeId = Integer.parseInt(request.getParameter("routeId"));
		int bookedSeatCount = Integer.parseInt(request.getParameter("bookedSeatCount"));
		
		boolean isBooked  = ticketBookedDbUtil.ticketBooking(userId, bus_id, routeId, ticketPrice, noOfSeats,bookedSeatCount);
		
		if( isBooked == true) {
			
			boolean isUpdated = ticketBookedDbUtil.updateBusDetails(bus_id, noOfSeats, bookedSeatCount);
			
			if(isUpdated ==  true) {
				String sid = Integer.toString(bus_id);
				
				List<Bus> busDetailsAgain = BookSeatDbUtil.viewSeat(sid);
				
				
				
				request.setAttribute("status", "booked");
				request.setAttribute("busdetails", busDetailsAgain);
				dispatcher = request.getRequestDispatcher("BusDetails.jsp");
				dispatcher.forward(request, response);
				
			}

		}else {
			request.setAttribute("status", "notbooked");
			dispatcher = request.getRequestDispatcher("BusDetails.jsp");
			dispatcher.forward(request, response);
		}
	}

}
