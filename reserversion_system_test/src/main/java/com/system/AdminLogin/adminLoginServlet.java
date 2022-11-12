package com.system.AdminLogin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.system.User.User;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLogin")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		List<Admin> admin = AdminLoginDbUtil.displayProfileData(email,password);
		
		RequestDispatcher dispatcher = null;
		if(!(admin.isEmpty())) {
			
			HttpSession session = request.getSession();
			session.setAttribute("id", AdminLoginDbUtil.getAdminId());
			
			dispatcher = request.getRequestDispatcher("adminProfile.jsp");	
			request.setAttribute("adminDetails", admin);
			dispatcher.forward(request, response);
		}else {
			dispatcher = request.getRequestDispatcher("AdminLogin.jsp");	
			request.setAttribute("status", "failed");
			dispatcher.forward(request, response);
		}
	}

}
