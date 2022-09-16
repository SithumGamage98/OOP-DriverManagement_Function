package com.driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("dname");
		
           try {
        	   List<Driver> driverDetails = DriverDBUtil.validate(name);
   			   request.setAttribute("driverDetails", driverDetails);
           }
           catch (Exception e) {
       		e.printStackTrace();
       	}
           
			RequestDispatcher dis = request.getRequestDispatcher("driveraccount.jsp");
			dis.forward(request, response);
		
	}

}
