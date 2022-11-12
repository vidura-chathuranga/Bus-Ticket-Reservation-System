package com.system.Inquiry;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class InquiryServlet
 */
@WebServlet("/feedback")
public class InquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String firstname = request.getParameter("firstname");
	    String lastname = request.getParameter("lastname");
	    String  email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String message = request.getParameter("subject");
	    customer customer1 = new customer(firstname, lastname, email, phone, message);
	    customerDB cusdb = new customerDB();
	    
	    boolean result = cusdb.insert(customer1);
	    
	    RequestDispatcher dispatcher = null;
	    if( result == true) {
	    	request.setAttribute("Feedback", "inserted");
	    	
	    }else {
	    	request.setAttribute("Feedback", "Ninserted");
	    }
	    
	    dispatcher = request.getRequestDispatcher("form.jsp");
	    dispatcher.forward(request, response);
	}

}
