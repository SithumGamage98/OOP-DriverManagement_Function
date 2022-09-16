package com.driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateDriverServlet")
public class UpdateDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String driverID = request.getParameter("driverID");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String vehicle_type = request.getParameter("vehicle_type");
		
		boolean isTrue;
		
		isTrue = DriverDBUtil.updatedriver(driverID, name,address, phone, email, vehicle_type);
		
		if(isTrue == true) {
			
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(driverID);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("driveraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(driverID);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
