<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		
<%
if (session.getAttribute("id") == null) {
	response.sendRedirect("AdminLogin.jsp");
}
%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Profile</title>

<link
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
rel="stylesheet"
/>
<!-- Google Fonts -->
<link
href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
rel="stylesheet"
/>
<!-- MDB -->
<link
href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css"
rel="stylesheet"
/>

<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.css"
rel="stylesheet"
/>

</head>
<body class="bg-light">
    <br>
    <br>
    <br>
    <div class="row">
    	<div class="col">
    		<a href="AdminSignOut"><button type="button" class="btn btn-danger" style="margin-left:1345px;">Sign Out</button></a>
    	</div>
    </div>
    <div class="container">
        <div class="row d-flex justify-content-center"></div>
        <div class="row z-depth-3">
            <div class="col-sm-4 bg-danger rounded-left">
                <div class="card-block text-center text-white">
                    <i class="fas fa-user-tie fa-7x mt-5"></i>
                    
                 
                <!-- foreach loop -->	    
            	<c:forEach var="admin" items="${adminDetails}">
                    
                    <h2 class="font-weight-bold mt-4">${admin.firstName}</h2>
                    <p>Admin</p>
                    <i class="far fa-edit fa-2x mb-4"></i>
                </div>
            </div>
            
            <div class="col-sm-8 bg-white rounded-right">
                <h3 class="mt-3 text-center"><u>Admin Profile</u></h3>
                <hr class="bg-primary">
                
			
				
			
                <div class="row">
                    <div class="col-sm-6">
                        <p class="font-weight-bold">First Name :</p>
                        <input type="text"  name="fname" class="text" value="${admin.firstName}"readonly />
                    
                    </div>
                    <div class="col-sm-6">
                        <p class="font-weight-bold">Last Name :</p>
                        <input type="text"  name="lname" class="text" value = "${admin.lastName}" readonly/>
                        
                    </div>
                </div>

                <!-- 2nd -->
                <div class="row">
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Email :</p>
                        <input type="email" name="email" class="text" value="${admin.email}" readonly/>
                    
                    </div>
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Phone Number :</p>
                        <input type="text"  name="number" class="text" value="${admin.phone}" readonly/>
                        <!-- <h6 class="text-muted">0711461016</h6> -->
                    </div>
                </div>
				
              </c:forEach>  
                 <div class="row">
                    <div class="col-sm-3">
                        <br>
                        <a href ="${userUpdate}">
                         <input type="button" name="update" value="Update Profile" class="btn btn-outline-primary">
                         </a>
                    </div>
                    <div class="col-sm-3">
                        <br>
                         <input type="button" name="delete" value = "Delete Profile "class="btn btn-outline-primary">
                        
                        
                    </div>
                    <div class="col-sm-3">
                        <br>
                         <a href="UpdateBusDetails"><input type="button" name="updateBus" value = "Update Bus"class="btn btn-outline-primary"></a>
                        
                        
                    </div>
                    <div class="col-sm-3">
                        <br>
                         <a href="UpdateRouteDetailsServlet"><input type="button" name="updateRoute" value = "Update Route"class="btn btn-outline-primary" class="a"></a>
                        
                        
                    </div>
                </div>
                
				
               
                
                

           <!--     <h4 class="mt-3">Projects</h4>
                <hr class="bg-primary">
                <div class="row">
                    <div class="col-sm-6">
                        <p class="font-weight-bold">Email:</p>
                        <h6 class="text-muted">vinnath@gmail.com</h6>
                    </div>
                    <div class="col-sm-6">
                        <p class="font-weight-bold">Most Viewd</p>
                        <h6 class="text-muted">Dinoter Husanic</h6>
                    </div>
                </div>  -->
                
                <hr class="bg-primary">
                <ul class="list-unstyled d-flex justify-content-center mt-4">  


                    <img src="buslogo.jpg" width="80px" length="80px">
                    
                </ul>

            </div>
        </div>
    </div>
    
</body>
</html>