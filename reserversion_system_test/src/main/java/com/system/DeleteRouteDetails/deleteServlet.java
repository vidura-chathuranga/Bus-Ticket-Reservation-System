package com.system.DeleteRouteDetails;

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
 * Servlet implementation class deleteServlet
 */
@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dlt = request.getParameter("routeid");
		int id = Integer.parseInt(dlt);
		
		
		boolean isdeleted = deletedbutil.deleteroute(id);
		if(isdeleted==true) {
			
			List<route> delete = updateRouteDetailsdbUtil.fetchRouteDetails();
			request.setAttribute("details", delete);
			request.setAttribute( "isdeleted",  "deleted");
			RequestDispatcher dispatcher = request.getRequestDispatcher("updateroute.jsp");
	       dispatcher.forward(request, response);
	       
		}
	}

}
