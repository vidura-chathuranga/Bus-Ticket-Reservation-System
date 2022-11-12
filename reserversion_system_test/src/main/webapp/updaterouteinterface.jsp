<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- bootstrap CDN link -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet" href="updateInterface.css">
<title>update route details</title>
</head>
<body>
	<%
	String routeid = request.getParameter("id");
	String startcity = request.getParameter("startcity");
	String endcity = request.getParameter("endcity");
	String price = request.getParameter("price");
	%>
	<div class="container editContainer">
		<h1 class="header text-center">Update Route Details</h1>
		<center>
            <hr width="1000px"><br>
        </center>
		<form action="updateInterfaceServelet" method="post">
			<div class="row">
				<div class="col column1">

					<div class="mb-3 ">
						<label for="routeeid" class="form-label">Route ID:</label> 
						<input type="text" value="<%=routeid%>" name="routeid" class="form-control" id="routeeid"
							aria-describedby="routeeid" readonly>
					</div>

					<div class="mb-3 ">
						<label for="startcity" class="form-label">Departure City:</label> <input
							type="text" value="<%=startcity%>" name="startcity" class="form-control" id="startcity">
					</div>

				</div>

				<div class="col column2">

					<div class="mb-3 ">
						<label for="endcity" class="form-label">Arrival City:</label> <input
							type="text" value="<%=endcity%>" name="endcity" class="form-control" id="endcity">
					</div>

					<div class="mb-3 ">
						<label for= "price" class="form-label">Price:</label> <input
							type="text"  value="<%=price%>"  name="price"  class="form-control" id="price">
					</div>
				</div>
			</div>
			<div class="row">
                <div class="col">
                    <center>
                        <button type="submit" class="btn btn-primary button">Update</button>
                    </center>
                    
                </div>
            </div>
            </form>
            
            <div class="row">
            	<div class="col">
            	<center>
            		<a href="fetchAllRouteDetails"><button type="button" class="btn btn-danger" style="margin-top:5px;width:100px;margin-left:40px;">Back</button></a>
            	</center>	
            	</div>
            </div> 
	</div>
</body>
</html>