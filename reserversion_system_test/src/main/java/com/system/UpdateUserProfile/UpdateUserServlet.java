package com.system.UpdateUserProfile;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.system.User.UserDbUtil;
import com.system.userProfile.updateUser;
import com.system.userProfile.userUpdateDbUtil;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter(("id"));
		String fname = request.getParameter(("fname"));
		String lname = request.getParameter(("lname"));
		String email = request.getParameter(("email"));
		String phone = request.getParameter(("phone"));
		String password = request.getParameter(("password"));
		
		int intId = Integer.parseInt(id);
		
		boolean isTrue;
		
		isTrue = UserDbUtil.updateProfile(intId,fname, lname, email, phone , password);
		
		if(isTrue ==  true) {
			List<updateUser> userDetails = userUpdateDbUtil.fetchUserDetails();
			request.setAttribute("details", userDetails);
			request.setAttribute("isUpdated", "Updated");
		}
		
		else {
			List<updateUser> userDetails = userUpdateDbUtil.fetchUserDetails();
			request.setAttribute("details", userDetails);
			request.setAttribute("isUpdated", "NotUpdated");

		}
		
		RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
		dis.forward(request , response);
	}

}
