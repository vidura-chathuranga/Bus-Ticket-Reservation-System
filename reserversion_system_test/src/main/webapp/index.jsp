<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
if (session.getAttribute("id") == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>

<!-- bootstrap CDN link -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="index.css">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

    <!-- swal library insert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">


<title>Quick Liner Transport</title>
</head>
<body>
	<!-- <h1> 
session.getAttribute("name")e") %> 
	</h1>-->

	<!--  <a href="logout"><button type="button">log out here</button></a> -->
<body id="background">
		
	    <div class="row">
        <div class="col-7">
            <p class="text-lg-start logo-text">QUICKLINER TRANSPORT</p>
        </div>

        <div class="col-lg-5 welcomColum g-0">
            <span class="HelloText">Hi, <%=request.getAttribute("name")%></span>
            
    
            
            <a href="http://localhost:8090/reserversion_system_test/userProfileServlet"><img src="avatar.png" alt="profilePicture" style="width:75px;height:75px;padding-left:8px;"></a>
        	<a href="logout"><button class="btn btn-danger" style="margin-left: 10px;">Sign Out</button></a>
        </div>
            
    </div>
	<p class="logo-subtext">Travel To Anywhere Easily.</p>

	<form action="index" method="post">
	
		<div class="container form-box g-0 search-box-align ">
			<div class="row ">
				<div class="col">
					<h3>From</h3>
					<select name="from" id="" class="form-select form-select-lg mb-3" 
						aria-label=".form-select-lg Disabled select example"
						style="border: 1px solid black">
						<option selected disabled>Select Your Start Location</option>

						<%
						try {
							Class.forName("com.mysql.jdbc.Driver");

							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation_ticket", "root", "password");

							Statement st = con.createStatement();

							String query = "select cities from( select start_City as cities from route union select end_city as cities from route ) tt where cities is not null";

							//getTable data
							ResultSet rs = st.executeQuery(query);

							//get values from extracted values one by one
							while (rs.next()) {
								%>
									<option name="from" value="<%=rs.getString("cities")%>"><%=rs.getString("cities")%></option>
								<%
							}
						} catch (Exception e) {
							
							e.printStackTrace();
						}
						%>



					</select>
				</div>

				<div class="col">
					<h3>To</h3>
					<select name="to" id="" class="form-select form-select-lg mb-3"
						aria-label=".form-select-lg example"
						style="border: 1px solid black">
						<option selected disabled>Select Your Destination
							Location</option>
						<%
						try {
							Class.forName("com.mysql.jdbc.Driver");

							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation_ticket", "root", "password");

							Statement st = con.createStatement();

							String query = "select cities from( select start_City as cities from route union select end_city as cities from route ) tt where cities is not null";

							//getTable data
							ResultSet rs = st.executeQuery(query);

							//get values from extracted values one by one
							while (rs.next()) {
						%>
								<option name="to" value="<%=rs.getString("cities")%>"><%=rs.getString("cities")%></option>
						<%
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
						%>
					</select>
				</div>
				<div class="col">
					<h3>Date</h3>
					<input width="417px" height="16px" type="date" name="date"
						style="width: 416px; height: 48px; border-radius: 5px; border: 1px solid black">
				</div>
			</div>

			<div class="form-row">
				<div class="col text-center">
					<button type="submit" class="btn btn-success mt-4 findBuses">Find
						Buses</button>
					<a href="#" class="any-help"><p class="text-end any-help">Need
							any help?</p></a>
				</div>
			</div>

		</div>
	</form>
	</div>
</body>
</html>