<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="updateBusDetailsCss.css">

    <title>Update Bus Details</title>
</head>
 <body>
    <div class="container tableEdit">
        
        <h1 style="margin-top:-20px;">Bus Details</h1><br>

        <table class="table table-hover">
            <thread class="table-dark">
                <tr>
                    <th scope="col">Bus ID</th>
                    <th scope="col">Bus No.Plate</th>
                    <th scope="col">Bus Name</th>
                    <th scope="col">Facilities</th>
                    <th scope="col">Seat Count</th>
                    <th scope="col">Booked Seat Count</th>
                    <th scope="col">Route Id</th>
                    <th scope="col">Action</th>
                </tr>
            </thread>
            <tbody>
                <c:forEach var="bus" items="${busDetails}">
                
                    <!--  set values for the variable pass to the update profile -->
                    
                    <c:set var = "id" value = "${bus.bus_id}" />
                    <c:set var ="noPlate" value= "${bus.bus_no_plate}" />
                    <c:set var ="busName" value= "${bus.bus_name}" />
                    <c:set var ="facilities" value= "${bus.facilities}" />
                    <c:set var ="seatCount" value= "${bus.seat_count}" />
                    <c:set var = "bSeatCount" value = "${bus.bookedSeatCount}"/>
                    <c:set var = "rid" value = "${bus.route_id}"/>
                    
                    
                <tr>
                    <th scope="row" >${bus.bus_id}</th>
                    <td>${bus.bus_no_plate}</td>
                    <td>${bus.bus_name}</td>
                    <td>${bus.facilities}</td>
                    <td>${bus.seat_count}</td>
                    <td>${bus.bookedSeatCount}</td>
                    <td>${bus.route_id}</td>
                    
                    
                 <!-- Update bus Details -->
                
                <c:url value="UpdateInterface.jsp" var="update">
                	
                	<c:param name="id" value="${id}"/>
                	<c:param name="noPlate" value="${noPlate}"/>
                	<c:param name="name" value="${busName}"/>
                	<c:param name="fac" value="${facilities}"/>
                	<c:param name="scount" value="${seatCount}"/>
                	<c:param name="bscount" value ="${bSeatCount}"/>
                	<c:param name="rcount" value = "${rid}" />
                </c:url>
                    <td><a href="${update}"><input type="button" class="btn btn-primary" value="Update" name="update"></a>&nbsp;&nbsp;&nbsp;<a href="deleteProfile.jsp"><input type="button" class="btn btn-danger" value="Delete"></a></td>
                </tr>
                
                </c:forEach>
			
            </tbody>
        </table>
        <button type="button" class="btn btn-primary">Back</button>
        <button type="button" class="btn btn-success">Insert New Record</button>
    </div>
     
	
</body>
</html>