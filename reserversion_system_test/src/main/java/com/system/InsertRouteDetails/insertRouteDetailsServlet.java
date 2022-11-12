package com.system.InsertRouteDetails;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.system.UpdateRouteDetails.route;
import com.system.UpdateRouteDetails.updateRouteDetailsdbUtil;

/**
 * Servlet implementation class insertRouteDetailsServlet
 */
@WebServlet("/insertRouteDetailsServlet")
public class insertRouteDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String routeid = request.getParameter("routeid");
		String startcity = request.getParameter("startcity");
		String endcity = request.getParameter("endcity");
		String price = request.getParameter("price");
		
		
		boolean isinserted =  insertroutedetailsdbUtil.insertdetials(routeid, startcity, endcity, price);
		RequestDispatcher dispatcher = null;
		
		if(isinserted==true) {
			
			List<route> routedetails = updateRouteDetailsdbUtil.fetchRouteDetails();
			request.setAttribute("details", routedetails);
			request.setAttribute( "isinserted",  "inserted");
			dispatcher = request.getRequestDispatcher("updateroute.jsp");
	       dispatcher.forward(request, response);
	       
		}
	}

}
