<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BusDetails</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link rel="stylesheet" href="busDetails.css">

	    <!-- swal library insert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>
		<input type="hidden" id="isbooked" value=<%= request.getAttribute("status")%>>
		
		<c:forEach var="bus" items="${busdetails}">
		
		
		
		<section class="form my-5 ">
        <div class="container">
            <div class="row g-0">
                <div class="col-lg-6">
                    <h1 class="busName" name="busname">${bus.bus_name}</h1><br>
                    <span class="noPlate">No.plate: ${bus.bus_no_plate}</span>
                    <span class="noPlate">${bus.startPoint} - ${bus.endPoint}</span>
                    <br><hr>

                    <br>
                    <img src="seat.jpg" width="480px" height="500px" id="img">
                </div>

                <div class="col-lg-6 secondColum">
                    
                    

                    <form action="ticketBooking" method="post">
						
						<!-- passed parameters -->
						<input type="hidden" value="${bus.bus_id}" name="bus_id">
						<input type="hidden" id="tprice" name="tprice" >	
						<input type="hidden" name="user_id" value='<%=session.getAttribute("id")%>'>
						<input type="hidden" name="routeId" value="${bus.route_id}">
						<input type = "hidden" name="bookedSeatCount" value="${bus.bookedSeatCount}"> 
						
                        <div class="form-row">
                            <div class="col-lg-7 mt-5">
                                <h2>SEAT COUNT: </h2>
                                <h1 class="mt-3 seatCount" id="aseatCount">${bus.available_seat_count}</h1>
                            </div>

                        <div class="form-row">
                                <div class="col-lg-7">
                                    <input type="number" name="noOfSeat" placeholder="Enter Seat Count You Want" class="form-control my-4 py-3" onclick="calcPrice()" id="RseatCount" min="0" max="${bus.available_seat_count}" required>
                                    <!-- max value comes from database -->
                                </div>
                        </div>

                        <div class="form-row mt-5">
                            <h1 class="price">LKR. <span id="price">0.00</span></h1>
                          </div>

                        <div class="form-row">
                            <div class="col-lg-7 mt-5">
                                <button type="submit" class="btn1 mt-3 mb-5 btn-success" >Book Now</button>
                            </div>
                    </div>
                    </form>
                    
                </div>
            </div>
            
        </div>
    </section>

    <script type="text/javascript">
        const CurrentSeatCount = document.getElementById('aseatCount').innerHTML;//comes form database

        function calcPrice(){
            var RseatCount = document.getElementById('RseatCount').value;
           
            var intCurrentSeat = parseInt(CurrentSeatCount); 
            var intRseatCount =  parseInt(RseatCount);

            var availableSeatCount = intCurrentSeat - intRseatCount;

            var price = parseFloat(RseatCount)  * ${bus.route_price};//busPrice

            document.getElementById('price').innerHTML = price;
            document.getElementById('tprice').value = price;
            document.getElementById('aseatCount').innerHTML = availableSeatCount;//availableSeatCount
           
        }
        
	    var isBooked = document.getElementById("isbooked").value;
	    
	    if( isBooked == 'booked'){
	    	swal("Success","Your Ticket is Booked!","success");
	    }else if( isBooked == 'notbooked'){
	    	swal("Oops!","This Process cannot be done!","error");
	    }
	    
    </script>
  </c:forEach>
</body>
</html>