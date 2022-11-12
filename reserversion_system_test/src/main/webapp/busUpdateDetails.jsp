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
    
    <!-- swal library insert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
    <title>Update Bus Details</title>
</head>
 <body>
    <div class="container tableEdit">
        <center>
        	<h1 style="margin-top:-20px;">Bus Details</h1><br>
		</center>
		<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
		<input type="hidden" id="isDeleted" value="<%= request.getAttribute("isDeleted") %>">
		<input type="hidden" id="isInserted" value="<%= request.getAttribute("isInserted") %>">
		
        <table class="table table-hover">
            <thead class="table-dark">
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
            </thead>
            <tbody>
                <c:forEach var="bus" items="${busDetails}">
                
                    <!--  set values for the variable pass to the update update bus interface -->
                    
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
                	<c:param name="rid" value = "${rid}" />
                </c:url>
                
                <c:url value="deleteInterface.jsp" var="delete">
                	
                	<c:param name="id" value="${id}"/>
                	<c:param name="noPlate" value="${noPlate}"/>
                	<c:param name="name" value="${busName}"/>
                	<c:param name="fac" value="${facilities}"/>
                	<c:param name="scount" value="${seatCount}"/>
                	<c:param name="bscount" value ="${bSeatCount}"/>
                	<c:param name="rid" value = "${rid}" />
                </c:url>
                    <td><a href="${update}"><input type="button" class="btn btn-primary" value="Update" name="update"></a>&nbsp;&nbsp;&nbsp;<a href="${delete}"><input type="button" class="btn btn-danger" value="Delete"></a></td>
                </tr>
                
                </c:forEach>
			
            </tbody>
        </table>
        <form action="fetchAdmin" method="post">
        	<input type="hidden" name="id" value="<%= session.getAttribute("id")%>">
        	<button type="submit" class="btn btn-primary">Back</button>
        
        <a href="InsertInterface.jsp"><button type="button" class="btn btn-success">Insert New Record</button></a>
    	</form>
    </div>
     
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		var isDeleted = document.getElementById("isDeleted").value;
		var isInserted = document.getElementById("isInserted").value;
		
		if(status == "Success"){
			swal("Updated!","The bus details are Updated","success");
		}
		
		if(isDeleted == "deleted"){
			swal("Deleted!","The bus details are Deleted","success");
		}
		
		if( isInserted == "inserted"){
			swal("Inserted!","The bus details are Inserted","success");
		}
	
	</script>
	
</body>
</html>