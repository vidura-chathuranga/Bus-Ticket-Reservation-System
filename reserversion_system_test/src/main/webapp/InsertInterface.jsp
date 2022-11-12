<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Interface</title>

	<!-- bootstrap CDN link -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<link rel="stylesheet" href="updateInterface.css">
</head>
<body>
	 <div class="container editContainer">
       
        <h1 class="header text-center">Insert Bus Details</h1>
        <center>
            <hr width="1000px"><br>
        </center>
        
            <form action="insertBusDetails" method="post">

            <div class="row">
                <div class="col colum1">
                    <div class="mb-3 ">
                        <label for="busname" class="form-label">Bus Name:</label>
                        <input type="text" class="form-control" id="busname"  name="busname">
                    </div>

                    <div class="mb-3 ">
                        <label for="facilities" class="form-label">Facilities:</label>
                        <input type="text" class="form-control" id="facilities"  name="facilities">
                    </div>

                    <div class="mb-3 ">
                        <label for="routeId" class="form-label">Route ID:</label>
                        <input type="text" class="form-control" id="routeId" id="routeId"  name="routeid" >
                    </div>
                </div>
                    <div class="col column2">
                        <div class="mb-3 ">
                            <label for="noplate" class="form-label">Bus No Plate:</label>
                            <input type="text" class="form-control" id="noplate"  name="noplate">
                        </div>

                        <div class="mb-3">
                            <label for="seatcount" class="form-label">Seat Count:</label>
                            <input type="text" class="form-control" id="seatcount" name="seatcount">
                        </div>
    
                        <div class="mb-3 ">
                            <label for="bookedSeatCount" class="form-label">Booked Seat Count:</label>
                            <input type="text" class="form-control" id="bookedSeatCount"  name="bseatcount">
                        </div>
                    </div>
            </div>       


            <div class="row">
                <div class="col">
                    <center>
                        <button type="submit" class="btn btn-success button">Insert Details</button>
             
                    </center>
             </form>
                </div>
            </div>
            <div class="row">
            	<div class="col">
            		<center>
            			<a href="fetchAllDetails"><button type="button" class="btn btn-danger" style="margin-top:15px;width:100px;margin-left:40px;">Back</button></a>
            		</center>
            	</div>
            </div>            
</body>
</html>