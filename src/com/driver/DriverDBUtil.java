package com.driver;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DriverDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Driver> validate(String name) {
		
		ArrayList<Driver> driver = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from driver where name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int driverID = rs.getInt(1);
				String dname= rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String vehicle_type= rs.getString(6);
				
				Driver d = new Driver(driverID,dname,address,phone,email,vehicle_type);
				driver.add(d);
			}
			
		} catch (Exception e) {
			
		}
		
		return driver;	
	}
    
	
	
 
	 public static boolean insertdriver(String name, String address, String phone, String email, String vehicle_type) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into driver values (0,'"+name+"','"+address+"','"+phone+"','"+email+"','"+vehicle_type+"')";
	    		int resultset = stmt.executeUpdate(sql);
	    		
	    		if(resultset > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	 
	 

	 public static boolean updatedriver(String driverID, String name, String address, String phone, String email, String vehicle_type) {
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update driver set name='"+name+"',address='"+address+"',phone='"+phone+"',email='"+email+"',vehicle_type='"+vehicle_type+"'"
	    				+ "where driverID='"+driverID+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	
	 public static List<Driver> getDriverDetails(String driverID) {
		 
		 	int converteddriverID = Integer.parseInt(driverID);
			
			ArrayList<Driver> driver = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from driver where driverID='"+converteddriverID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while (rs.next()) {
					int driverID1 = rs.getInt(1);
					String dname= rs.getString(2);
					String address = rs.getString(3);
					String phone = rs.getString(4);
					String email = rs.getString(5);
					String vehicle_type= rs.getString(6);
					
					Driver d = new Driver(driverID1,dname,address,phone,email,vehicle_type);
					driver.add(d);
	    		}	
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return driver;	
	    }
	 
	 public static boolean deleteDriver(String driverID) {
	    	
		 int converteddriverID = Integer.parseInt(driverID);
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from driver where driverID='"+converteddriverID+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
}
