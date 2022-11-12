package com.system.AdminLogin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class FetchAdminDetails
 */
@WebServlet("/fetchAdmin")
public class FetchAdminDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		int intId = Integer.parseInt(id);
		
		List<Admin> admin = AdminLoginDbUtil.getAdminDetailsById(intId);
		
		RequestDispatcher dispatcher = null;
		
		if(!(admin.isEmpty())) {
			dispatcher = request.getRequestDispatcher("adminProfile.jsp");	
			request.setAttribute("adminDetails", admin);
			dispatcher.forward(request, response);
		}
	}

}
