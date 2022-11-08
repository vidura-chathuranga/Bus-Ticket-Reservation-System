package com.system.userProfile;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class userProfile
 */
@WebServlet("/userProfileServlet")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<updateUser> userDetailsList = userUpdateDbUtil.fetchUserDetails();
		
		RequestDispatcher dispatcher = null;
		
		req.setAttribute("userDetails", userDetailsList);
		
		dispatcher = req.getRequestDispatcher("userprofile.jsp");
		
		dispatcher.forward(req, resp);
	}



}
