<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Bus Details</title>

	<!-- bootstrap CDN link -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<link rel="stylesheet" href="updateInterface.css">
</head>
<body>
		
    <%
        String busid = request.getParameter("id");
        String bNoPlate = request.getParameter("noPlate");
        String busName = request.getParameter("name");
        String facilities = request.getParameter("fac");
        String seatCount = request.getParameter("scount");
        String bookedSeatCount = request.getParameter("bscount");
        String routeid = request.getParameter("rid");
               
    %>
    <div class="container editContainer">
       
        <h1 class="header text-center">Delete Bus Details</h1>
        <center>
            <hr width="1000px"><br>
        </center>
        
            <form action="deleteBus" method="post">

            <div class="row">
                <div class="col colum1">
                    <div class="mb-3 ">
                        <label for="busid" class="form-label">Bus ID:</label>
                        <input type="text" class="form-control" id="busid" aria-describedby="busid" value="<%=busid%>" name="busid" readonly>
                    </div>

                    <div class="mb-3 ">
                        <label for="busname" class="form-label">Bus Name:</label>
                        <input type="text" class="form-control" id="busname" value="<%=busName%>" name="busname" readonly>
                    </div>

                    <div class="mb-3 ">
                        <label for="facilities" class="form-label">Facilities:</label>
                        <input type="text" class="form-control" id="facilities" value="<%=facilities%>" name="facilities" readonly>
                    </div>

                    <div class="mb-3 ">
                        <label for="routeId" class="form-label">Route ID:</label>
                        <input type="text" class="form-control" id="routeId" id="routeId" value="<%=routeid%>" name="routeid" readonly>
                    </div>
                </div>
                    <div class="col column2">
                        <div class="mb-3 ">
                            <label for="noplate" class="form-label">Bus No Plate:</label>
                            <input type="text" class="form-control" id="noplate" value="<%=bNoPlate%>" name="noplate" readonly>
                        </div>

                        <div class="mb-3">
                            <label for="seatcount" class="form-label">Seat Count:</label>
                            <input type="text" class="form-control" id="seatcount" value="<%=seatCount%>" name="seatcount" readonly>
                        </div>
    
                        <div class="mb-3 ">
                            <label for="bookedSeatCount" class="form-label">Booked Seat Count:</label>
                            <input type="text" class="form-control" id="bookedSeatCount" value="<%=bookedSeatCount%>" name="bseatcount" readonly>
                        </div>
                    </div>
            </div>       


            <div class="row">
                <div class="col">
                    <center>
                        <button type="submit" class="btn btn-danger button">Delete</button>
                    </center>
                    
                </div>
            </div> 
            </form>
            
            <div class="row">
            	<div class="col">
            	<center>
            		<a href="fetchAllDetails"><button type="button" class="btn btn-primary" style="margin-top:15px;width:100px;margin-left:40px;">Back</button></a>
            	</center>	
            	</div>
            </div>                           
	
</body>
</html>