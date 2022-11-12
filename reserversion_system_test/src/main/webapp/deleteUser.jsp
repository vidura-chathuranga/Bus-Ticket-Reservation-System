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

<!-- swal library insert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">


</head>

<body class="bg-light">
    <br>
    <br>
    <br><br><br>
    <div class="container">
        <div class="row d-flex justify-content-center"></div>
        <div class="row z-depth-3">
            <div class="col-sm-4 bg-info rounded-left">
                <div class="card-block text-center text-white">
                    <i class="fas fa-user-tie fa-7x mt-5"></i>
                    
                <%
                	String id = request.getParameter("id");
                    String fname = request.getParameter("fname");
                    String lname = request.getParameter("lname");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String password = request.getParameter("password");
               
                %>
                    
                    
                <form action = "DeleteUserServlet" method="post">
                    
                    <h2 class="font-weight-bold mt-4"><%=fname%></h2>
                    <p>User</p>
                    <i class="far fa-edit fa-2x mb-4"></i>
                </div>
            </div>

        
            
            <div class="col-sm-8 bg-white rounded-right">
                <h3 class="mt-3 text-center"><u>Delete Profile</u></h3>
                <hr class="bg-primary">

                <div class="row">
                    <div class="col-sm-6">
                        <p class="font-weight-bold">First Name :</p>
                        <input type="text" value = "<%=fname%>"name="fname" class="text" readonly  />
                    
                    </div>
                    <div class="col-sm-6">
                        <p class="font-weight-bold">Last Name :</p>
                        <input type="text" value = "<%=lname%>" name="lname" class="text" readonly/>
                        
                    </div>
                </div>

                
                <div class="row">
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Email :</p>
                        <input type="email" value = "<%=email%>" name="email" class="text" readonly/>
                    
                    </div>
                    <div class="col-sm-6">
                        <br>
                        <p class="font-weight-bold">Phone Number :</p>
                        <input type="text" value = "<%=phone%>" name="phone" class="text" readonly/>
                        
                    </div>
                </div>
                
                
                
                 <div class="row">
                    <div class="col-sm-12">
                        <br>
                        <p class="font-weight-bold" >Password</p>
                        <input type="password" value = "<%=password%>" name="password" class="text" readonly/>
                        
                         <input type="hidden" value = "<%=id%>" name="id" class="text" /> 
                    
                    </div>
                    
                </div>
                
                <div class="row">
                    
                    <div class="col-sm-6">
                        <br>
                         <input type="submit"  name="submit" value = "Delete Profile "class="btn btn-danger btn-sm">
                        
                        
                    </div>
                    
                </div>
            
            

                <hr class="bg-primary">
                <ul class="list-unstyled d-flex justify-content-center mt-4">  


                    <img src="buslogo.jpg" width="80px" length="80px">
                   
                </ul>

            </div>
</form>

	
		
           
        </div>
    </div>
    
</body>
</html>