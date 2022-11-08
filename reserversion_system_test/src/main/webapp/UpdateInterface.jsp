<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updating Bus Details</title>
</head>
<body>

    <%
        String busid = request.getParameter("id");
        String bNoPlate = request.getParameter("noPlate");
        String busName = request.getParameter("name");
        String facilities = request.getParameter("fac");
        String seatCount = request.getParameter("scount");
        String bookedSeatCount = request.getParameter("bscount");
        String routeCount = request.getParameter("rcount");
               
    %>
	Bus ID:<input type="text" name="busid"  value="<%=busid%>" readOnly><br>
	Bus No.plate:<input type="text" name="noplate" value="<%=bNoPlate%>"><br>
	Bus Name:<input type="text" name="busName" value="<%=busName%>"><br>
	Facilities:<input type="text" name="seatCount" value="<%=facilities%>"><br>
	Seat Count:<input type="text" name="bseatCount" value="<%=seatCount%>"><br>
	Booked Seat Count:<input type="text" name="bseatCount" value="<%=bookedSeatCount%>"><br>
	Route ID:<input type="text" name="busid" value="<%=routeCount%>" readonly>
</body>
</html>