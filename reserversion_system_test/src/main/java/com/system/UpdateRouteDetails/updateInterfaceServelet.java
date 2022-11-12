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
 * Servlet implementation class updateInterfaceServelet
 */
@WebServlet("/updateInterfaceServelet")
public class updateInterfaceServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String routeid = request.getParameter("routeid");
		String startcity = request.getParameter("startcity");
		String endcity = request.getParameter("endcity");
		String price = request.getParameter("price");

		boolean isupdated = updateRouteDetailsdbUtil.updateroutedetails(routeid, startcity, endcity, price);
		RequestDispatcher dispatcher = null;

		if (isupdated == true) {

			List<route> routedetails = updateRouteDetailsdbUtil.fetchRouteDetails();
			request.setAttribute("details", routedetails);
			request.setAttribute("status", "updated");
			dispatcher = request.getRequestDispatcher("updateroute.jsp");
			dispatcher.forward(request, response);

		}
	}

}
