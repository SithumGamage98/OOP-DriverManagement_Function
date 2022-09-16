package com.driver;

public class Driver {
    
	private int driverID;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String vehicle_type;
    
    public Driver(int driverID, String name, String address, String phone, String email, String vehicle_type) {
	this.driverID = driverID;
	this.name = name;
	this.address = address;
	this.phone = phone;
	this.email = email;
	this.vehicle_type = vehicle_type;
    }

	public int getDriverID() {
		return driverID;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}


}
