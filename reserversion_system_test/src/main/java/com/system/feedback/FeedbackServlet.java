package com.system.feedback;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class FeedbackServlet
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String  email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String message = request.getParameter("subject");
		String rate = request.getParameter("experience");
		
		feedback customer1 = new feedback(firstname, lastname, email, phone, message, rate);
		feedbackDB cusdb = new feedbackDB();
		boolean result = cusdb.insert(customer1);
		
		RequestDispatcher dispatcher= null;
		
		if(result==true) {
			request.setAttribute("feedback", "successfull");
			dispatcher = request.getRequestDispatcher("feedback.jsp");
			dispatcher.forward(request, response);
		}
	}

}
