package com.system.UpdateRouteDetails;

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
 * Servlet implementation class fetchAllRouteDetails
 */
@WebServlet("/fetchAllRouteDetails")
public class fetchAllRouteDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;

		List<route> routeDetails = updateRouteDetailsdbUtil.fetchRouteDetails();

		if (!(routeDetails.isEmpty())) {

			request.setAttribute("details", routeDetails);
			dispatcher = request.getRequestDispatcher("updateroute.jsp");
			dispatcher.forward(request, response);
		}
	}

}
