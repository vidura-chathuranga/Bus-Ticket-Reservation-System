package com.system.Index;

public class Bus {
	
	private int bus_id;
	private String bus_no_plate;
	private String bus_name;
	private int seat_count;
	private int route_id;
	private String facilities;
	private double route_price;
	private int bookedSeatCount;
	private int available_seat_count;
	private String startPoint;
	private String endPoint;
	
	

	public Bus(int bus_id, String bus_no_plate, String bus_name, int seat_count, int route_id, String facilities,
			int bookedSeatCount) {
		this.bus_id = bus_id;
		this.bus_no_plate = bus_no_plate;
		this.bus_name = bus_name;
		this.seat_count = seat_count;
		this.route_id = route_id;
		this.facilities = facilities;
		this.bookedSeatCount = bookedSeatCount;
	}
	public String getStartPoint() {
		return startPoint;
	}
	public void setStartPoint(String startPoint) {
		this.startPoint = startPoint;
	}
	public String getEndPoint() {
		return endPoint;
	}
	public void setEndPoint(String endPoint) {
		this.endPoint = endPoint;
	}
	public void setAvailable_seat_count(int available_seat_count) {
		this.available_seat_count = available_seat_count;
	}
	public Bus(int bus_id, String bus_no_plate, String bus_name, int seat_count, int route_id, String facilities,double route_price,int bookedSeatCount) {

		this.bus_id = bus_id;
		this.bus_no_plate = bus_no_plate;
		this.bus_name = bus_name;
		this.seat_count = seat_count;
		this.route_id = route_id;
		this.facilities = facilities;
		this.route_price = route_price;
		this.bookedSeatCount = bookedSeatCount;
		
		calcAvailableSeatCount();
		
	}
	public Bus(int intId, String no_plate, String name, int seatCount, int route_id2, String facilities2,int bookedSeatCount2,String starPoint, String endPoitnt,double routePrice) {
		this.bus_id = intId;
		this.bus_no_plate = no_plate;
		this.bus_name = name;
		this.seat_count = seatCount;
		this.route_id = route_id2;
		this.facilities = facilities2;
		this.bookedSeatCount = bookedSeatCount2;
		this.startPoint = starPoint;
		this.endPoint = endPoitnt;
		this.route_price = routePrice;
		
		calcAvailableSeatCount();
	}
	public void calcAvailableSeatCount() {
		this.available_seat_count = this.seat_count - this.bookedSeatCount;
	}
	
	public int getAvailable_seat_count() {
		return available_seat_count;
	}


	public int getBookedSeatCount() {
		return bookedSeatCount;
	}


	public void setBookedSeatCount(int bookedSeatCount) {
		this.bookedSeatCount = bookedSeatCount;
	}


	public double getRoute_price() {
		return route_price;
	}


	public void setRoute_price(double route_price) {
		this.route_price = route_price;
	}


	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public int getBus_id() {
		return bus_id;
	}
	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}
	public String getBus_no_plate() {
		return bus_no_plate;
	}
	public void setBus_no_plate(String bus_no_plate) {
		this.bus_no_plate = bus_no_plate;
	}
	public String getBus_name() {
		return bus_name;
	}
	public void setBus_name(String bus_name) {
		this.bus_name = bus_name;
	}
	public int getSeat_count() {
		return seat_count;
	}
	public void setSeat_count(int seat_count) {
		this.seat_count = seat_count;
	}
	public int getRoute_id() {
		return route_id;
	}
	public void setRoute_id(int route_id) {
		this.route_id = route_id;
	}
	
	
}
