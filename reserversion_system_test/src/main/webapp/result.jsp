<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus Result</title>
<link rel="stylesheet" href="result.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body style="background-color:rgb(226, 226, 226)">
	<input type="hidden" id="report_error" value=<%=request.getAttribute("busStatus")%>>
	<input type="hidden" id="AvaseatCount" value="${bus.available_seat_count}">
	

	<c:forEach var="bus" items="${BusDetails}">
		
		<div class="container back mt-2 mb-2">
        <div class="row row_padding">
            <div class="col-3" style="padding-left:50px">
                <h4>${bus.bus_name}</h4>
                <p>${bus.bus_no_plate}</p>
                
            </div>

            <div class="col-3" style="padding-left:80px">
                <p>${bus.facilities}</p>
                <p>Available Seat Count : ${bus.available_seat_count} / ${bus.seat_count}</p>
                
            </div>

            <div class="col-3" style="padding-top:10px">
                <p style="font-size: 30px;padding-left:50px">LKR ${bus.route_price}</p>
            </div>
            <div class="col-3" style="padding-top:15px;padding-left:50px">
                
                <form method ="post" action ="bookedSeatServlet">
                	<input type ="hidden" name="busID" value="${bus.bus_id}">
                	<button type="submit" class="btn btn-success btn-class" name="viewSeat">View Seat</button>
                </form>
            </div>
        </div>
    </div>
		
	</c:forEach>


	<p id="error"></p>

	<script type="text/javascript">
		var result = document.getElementById("report_error").value;

		if (result == "NoBus") {
			document.getElementById('error').innerHTML = "There are no Bus records";
		}
		
		var availableSeatcount = document.getElementById("AvaseatCount").value;
		
		if(  availableSeatcount == 0){
			
		}
	</script>
</body>
</html>