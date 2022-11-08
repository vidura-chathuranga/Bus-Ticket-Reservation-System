<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<head>
    
    <title>User Profile</title>
    <!-- Font Awesome -->
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
    <br>
    <br>
    <div class="container">
        <div class="row d-flex justify-content-center"></div>
        <div class="row z-depth-3">
            <div class="col-sm-4 bg-info rounded-left">
                <div class="card-block text-center text-white">
                    <i class="fas fa-user-tie fa-7x mt-5"></i>
                    
                    <c:forEach var="cusDetails" items="${userDetails}">
                    
                    <h2 class="font-weight-bold mt-4">${cusDetails.fname}</h2>
                    <p>User</p>
                    <i class="far fa-edit fa-2x mb-4"></i>
                </div>
            </div>
            
            <div class="col-sm-8 bg-white rounded-right">
                <h3 class="mt-3 text-center"><u>User Profile</u></h3>
                <hr class="bg-primary">

                <div class="row">
                    <div class="col-sm-6">
                        <p class="font-weight-bold">First Name :</p>
                        <input type="text" value = "${cusDetails.fname}"name="fname" class="text" readonly />
                    <!-- <h6 class="text-muted">vinnath@gmail.com</h6> -->
                    </div>
                    <div class="col-sm-6">
                        <p class="font-weight-bold">Last Name :</p>
                        <input type="text" value = "${cusDetails.lname}" name="lname" class="text" readonly/>
                        <!-- <h6 class="text-muted">0711461016</h6> -->
                    </div>
                </div>

                <!-- 2nd -->
                <div class="row">
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Email :</p>
                        <input type="email" value = "${cusDetails.email}" name="email" class="text" readonly/>
                    <!-- <h6 class="text-muted">vinnath@gmail.com</h6> -->
                    </div>
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Phone Number :</p>
                        <input type="text" value = "${cusDetails.phone}" name="number" class="text" readonly/>
                        <!-- <h6 class="text-muted">0711461016</h6> -->
                    </div>
                </div>
				</c:forEach>
                <!-- Update profile -->
                 <div class="row">
                    <div class="col-sm-6">
                        <br>
                         <button type="button" class="btn btn-primary btn-sm">Update Profile</button>
                    </div>
                    <div class="col-sm-6">
                        <br>
                         <button type="button" class="btn btn-primary btn-sm">Delete Profile</button>
                        
                        
                    </div>
                </div>
                

                <hr class="bg-primary">
                <ul class="list-unstyled d-flex justify-content-center mt-4">


                    <img src="buslogo.jpg" width="80px" length="80px">
                    <!-- <li><a href="#"><i class="fab fa-facebook-f px-3 h4 text-info"></i></a></li>
                    <li><a href="#"><i class="fab fa-youtube px-3 h4 text-info"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter px-3 h4 text-info"></i></a></li> -->
                </ul>

            </div>
        </div>
    </div>
    
</body>
</html>