<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap CDN link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- CSS Link -->
    <link rel="stylesheet" href="registerCss.css">
    
    <!-- swal library insert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>

<body>
    
    <!-- hidden text box -->
    <input type="hidden" id="status" value =<%= request.getAttribute("status") %>>
    
    <section class="form my-5">

        <div class="container">

            <div class="row g-0">

                <div class="col-lg-6 firstColum">

                    <h1 class="font-weight-bold pt-5">QuickLiner<h2>T R A N S P O R T S</h2></h1>
                    <h4 class="pb-2 pt-5">Sign In to Your Account</h4>

                    <form action="register" method="post">

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="firstname" placeholder="First Name (eg: jhon)" class="form-control my-3 py-2" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="lastname" placeholder="Last Name (eg: Carter)" class="form-control my-3 py-2" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="email" name="email" placeholder="Email eg: (jhonXXX@gmail.com)" class="form-control my-3 py-2" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="phone" name="phonenumber" placeholder="Mobile No.. 071XXXXXX" class="form-control my-3 py-2" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="password" name="password" placeholder="Password" class="form-control my-3 py-2" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="submit" name="submit" value="Sign Up" class="btn1 mt-3 mb-5">
                            </div>
                        </div>

                        <p class="mt-1">Already have an account ? <a href="login.jsp"> Sign In here</a></p>
                    </form>

                </div>

                
                <div class="col-lg-6 px-0">
                    <img src="regImg2.jpg" class="img-fluid" alt="login bus photo">
                </div>
            </div>
            
        </div>
    </section>
    
    <script type="text/javascript">
		var status = document.getElementById("status").value;
	
		if(status == 'success'){
			swal("Congrats!","You have Registered Successfully","success");
		}
	</script>
</body>




</html>

    