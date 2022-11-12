package com.system.Inquiry;

public class customer {
	 private String firstname, lastname, email, phone, message;

	  public customer(String firstname, String lastname, String email, String phone, String message) {
	    super();
	    this.firstname = firstname;
	    this.lastname = lastname;
	    this.email = email;
	    this.phone = phone;
	    this.message = message;
	  }

	  public customer() {
	    super();
	  }

	  public String getFirstname() {
	    return firstname;
	  }

	  public void setFirstname(String firstname) {
	    this.firstname = firstname;
	  }

	  public String getLastname() {
	    return lastname;
	  }

	  public void setLastname(String lastname) {
	    this.lastname = lastname;
	  }

	  public String getEmail() {
	    return email;
	  }

	  public void setEmail(String email) {
	    this.email = email;
	  }

	  public String getPhone() {
	    return phone;
	  }

	  public void setPhone(String phone) {
	    this.phone = phone;
	  }

	  public String getMessage() {
	    return message;
	  }

	  public void setMessage(String message) {
	    this.message = message;
	  }
}
