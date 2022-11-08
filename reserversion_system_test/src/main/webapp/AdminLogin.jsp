<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap CDN link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- CSS Link -->
    <link rel="stylesheet" href="AdminLogin.css">
</head>
<body>
    
    <section class="form my-5 ">
        <div class="container">
            <div class="row g-0">
                <div class="col-lg-6">
                    <img src="loginpic.jpeg" class="img-fluid" alt="login Bus Image">
                </div>

                <div class="col-lg-6 secondColum">

                    <h1 class="font-weight-bold pt-5">QuickLiner<h2>T R A N S P O R T S</h2></h1>
                    <h4 class="pb-2 pt-5">Sign into your account (As Admin)</h4>

                    <form action="Login" method="post">

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="email" name="email" placeholder="lisa22@gmail.com" class="form-control my-3 py-3">
                            </div>

                        <div class="form-row">
                                <div class="col-lg-7">
                                    <input type="password" name="password" placeholder="********" class="form-control my-4 py-3">
                                </div>
                        </div>

                        <div class="form-check ">
                            <input class="form-check-input" type="checkbox" value="remeberme">
                            <label class="form-check-label" >Remember Me</label>
                          </div>

                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="button" class="btn1 mt-3 mb-5">Login</button>
                            </div>
                    </div>

                    <a href="#">Forget Password</a>
                    <p class="mt-1">Don't have an account<a href="AdminReg.jsp"> Register here</a></p>
                    </form>
                </div>
            </div>
            
        </div>
    </section>
</body>
</html>