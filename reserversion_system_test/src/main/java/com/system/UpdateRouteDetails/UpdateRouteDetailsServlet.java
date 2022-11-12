package com.system.UpdateRouteDetails;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class UpdateRouteDetailsServlet
 */
@WebServlet("/UpdateRouteDetailsServlet")
public class UpdateRouteDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<route> routelist = updateRouteDetailsdbUtil.fetchRouteDetails();
		
		
		RequestDispatcher dispatcher = null;
		
		if(routelist.isEmpty()) {
			request.setAttribute( "status" , "There are no any records");
			dispatcher = request.getRequestDispatcher("updateroute.jsp");
			dispatcher.forward(request, response);
		}
		else {
			request.setAttribute( "details", routelist);
			dispatcher = request.getRequestDispatcher("updateroute.jsp");
			dispatcher.forward(request, response);
		}
	}


}
