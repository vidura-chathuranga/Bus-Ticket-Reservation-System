package com.system.UpdateRouteDetails;

public class route {

	private int routeID;
	private String startCity;
	private String endCity;
	private double price;
	public int getRouteID() {
		return routeID;
	}
	public void setRouteID(int routeID) {
		this.routeID = routeID;
	}
	public String getStartCity() {
		return startCity;
	}
	public void setStartCity(String startCity) {
		this.startCity = startCity;
	}
	public String getEndCity() {
		return endCity;
	}
	public void setEndCity(String endCity) {
		this.endCity = endCity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public route(int routeID, String startCity, String endCity, double price) {
		 
		this.routeID = routeID;
		this.startCity = startCity;
		this.endCity = endCity;
		this.price = price;
	}
	
	
}
