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

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">


</head>

<body class="bg-light">

	<input type="hidden" id="isUpdated" value="<%= request.getAttribute("isUpdated")%>">
    <br>
    <br>
    <br><br><br>
    <div class="container">
        <div class="row d-flex justify-content-center"></div>
        <div class="row z-depth-3">
            <div class="col-sm-4 bg-info rounded-left">
                <div class="card-block text-center text-white">
                    <i class="fas fa-user-tie fa-7x mt-5"></i>
                    
                    <c:forEach var="cusDetails" items="${details}">
                    
                    <!--  set values for the variable pass to the update profile -->
                    
                    <c:set var = "id" value = "${cusDetails.id}" />
                    <c:set var ="fname" value= "${cusDetails.fname}" />
                    <c:set var ="lname" value= "${cusDetails.lname}" />
                    <c:set var ="email" value= "${cusDetails.email}" />
                    <c:set var ="phone" value= "${cusDetails.phone}" />
                    <c:set var = "password" value = "${cusDetails.password}"/>
                    
                    
                    
                    
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
                    
                    </div>
                    <div class="col-sm-6">
                        <p class="font-weight-bold">Last Name :</p>
                        <input type="text" value = "${cusDetails.lname}" name="lname" class="text" readonly/>
                        
                    </div>
                </div>


<!-- 2nd -->
                <div class="row">
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Email :</p>
                        <input type="email" value = "${cusDetails.email}" name="email" class="text" readonly/>
                    
                    </div>
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Phone Number :</p>
                        <input type="text" value = "${cusDetails.phone}" name="number" class="text" readonly/>
                        
                        
                        <!-- Get password -->
                        <input type="hidden"  name="password" value="${cusDetails.password}">
                        
                        <!-- Get User Id -->
                        <input type="hidden"  name="id" value="${cusDetails.id}">
                        
                    </div>
                </div>
        </c:forEach>
                <!-- Update profile -->
                
                <c:url value="updateProfile.jsp" var="userUpdate">
                  
                  <c:param name="fname" value="${fname}"/>
                  <c:param name="lname" value="${lname}"/>
                  <c:param name="email" value="${email}"/>
                  <c:param name="phone" value="${phone}"/>
                  <c:param name="password" value ="${password}"/>
                  <c:param name="id" value = "${id}" />
                </c:url>
                
                 <div class="row">
                    <div class="col-sm-6">
                        <br>
                        <a href ="${userUpdate}">
                         <input type="button" name="update" value="Update Profile" class="btn btn-primary btn-sm">
                         </a>
                    </div>
                    <div class="col-sm-6">
                        <br>
                        
                        <c:url value ="deleteUser.jsp" var="userdelete">
                          <c:param name="fname"   value="${fname}"/>
                      <c:param name="lname"   value="${lname}"/>
                      <c:param name="email"   value="${email}"/>
                      <c:param name="phone"    value="${phone}"/>
                      <c:param name="password"  value ="${password}"/>  
                      <c:param name="id"        value = "${id}" />  
                        
                        </c:url>
                        
                        <a href = "${userdelete}">
                         <input type="button" name="delete" value = "Delete Profile "class="btn btn-primary btn-sm">
                        </a>
                        
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
                    <!-- <li><a href="#"><i class="fab fa-facebook-f px-3 h4 text-info"></i></a></li>
                    <li><a href="#"><i class="fab fa-youtube px-3 h4 text-info"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter px-3 h4 text-info"></i></a></li> -->
                </ul>

            </div>
        </div>
    </div>
    
    <!-- Java script validation for update User Profile -->
    <script type="text/javascript">
    	var isUpdated = document.getElementById("isUpdated").value;
    	
    	if(isUpdated == "Updated"){
    		swal("Updated!","You have successfully updated your profile","success");
    	}
    	if(isUpdated == "NotUpdated"){
    		swal("Not Updated!","You have not successfully updated your profile","error");
    	}
    </script>
</body>
</html>