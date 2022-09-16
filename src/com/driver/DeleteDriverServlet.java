package com.driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteDriverServlet")
public class DeleteDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String driverID = request.getParameter("driverID");
		
		boolean isTrue;
		
		isTrue = DriverDBUtil.deleteDriver(driverID);
		
		if(isTrue == true) {
			
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(driverID);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("driverinsert.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(driverID);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("driveraccount.jsp");
			dis.forward(request, response);
		}
		
		
		
	}

}
