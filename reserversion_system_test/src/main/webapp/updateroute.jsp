<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- swal library insert -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
  
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="updateRouteDetailsCss.css">

<title>Update route Details</title>
</head>
<body>
 <input type="hidden" id="isupdated" value="<%= request.getAttribute("status")%>">
  <input type="hidden" id="isdeleted" value="<%= request.getAttribute("isdeleted")%>">
   <input type="hidden" id="isinserted" value="<%= request.getAttribute("isinserted")%>">

	<div class="container tableEdit">
		<center>
		<h1 style="margin-top: -20px;">Route Details</h1>
		</center>
		<br>

		<table class="table table-hover">
			<thead class="table-dark">
				<tr>
					<th scope="col">Route ID</th>
					<th scope="col">Start City</th>
					<th scope="col">End City</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="route" items="${details}">

					<c:set var="id" value="${route.routeID}" />
					<c:set var="startcity" value="${route.startCity}" />
					<c:set var="endcity" value="${route.endCity}" />
					<c:set var="price" value="${route.price}" />

					<tr>
						<th scope="row">${route.routeID}</th>
						<td>${route.startCity}</td>
						<td>${route.endCity}</td>
						<td>${route.price}</td>

						<c:url value="updaterouteinterface.jsp" var="update">

							<c:param name="id" value="${id}" />
							<c:param name="startcity" value="${startcity}" />
							<c:param name="endcity" value="${endcity}" />
							<c:param name="price" value="${price}" />

						</c:url>
						<c:url value=" deleteroutedetails.jsp" var="delete">

							<c:param name="id" value="${id}" />
							<c:param name="startcity" value="${startcity}" />
							<c:param name="endcity" value="${endcity}" />
							<c:param name="price" value="${price}" />

						</c:url>
						<td><a href="${update}"> <input type="Button" class="btn btn-primary"
							value="Update"></a>&nbsp;&nbsp;&nbsp;<a href="${delete}">
							<input type="button" class="btn btn-danger" value="Delete"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form action="fetchAdmin" method="post">
        	<input type="hidden" name="id" value="<%= session.getAttribute("id")%>">
			<button type="submit" class="btn btn-primary">Back</button>
			<a href = "insertroute.jsp"><button type="button" class="btn btn-success">Insert New
			Record</button></a>
		</form>
	</div>
<script>
var status=document.getElementById("isupdated").value;
if(status=="updated"){
	
	swal("Updated!","The route details are Updated","success");
}

var deleteroute =document.getElementById("isdeleted").value;
if(deleteroute=="deleted"){
	
	swal("deleted!","The route details are Deleted","success");
}

var insertroute =document.getElementById("isinserted").value;
if(insertroute=="inserted"){
	
	swal("inserted!","The route details are Inserted","success");
}
</script>
</body>
</html>