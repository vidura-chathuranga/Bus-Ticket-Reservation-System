<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- swal library insert -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
  
<meta charset="ISO-8859-1">
<title>FeedBack page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
	
<link rel="stylesheet" href="feedback.css">
</head>
<body>
 <input type="hidden" id="feedback" value="<%= request.getAttribute("feedback")%>">
 
	<div class="container edit">
		<div class="row"> 
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h1 class="text.center mt-3 font-weight-bold">Feedback</h1>
				<hr class=""bg-white">
				<h6 class="text-center">Please Write your feedback below:</h6>
				<h3 class="mt-4">How do you rate your experience</h3>
				
				<br>
 			<form action="FeedbackServlet" method="post">
				<label class="radio-inline"><input type="radio" name="experience" value="bad">&nbsp;Bad</label>
				<label class="radio-inline"><input type="radio" name="experience" value="average">&nbsp;Average</label>
				<label class="radio-inline"><input type="radio" name="experience" value="good">&nbsp;Good</label>
			</div>
			</div><br>
					<div class="row">
						<div class="col-md-2"></div>
						<label class="col-md-4">First Name<br> <input
							type="text" id="text" name="firstname"
							placeholder="Enter your First name" required></label> <label
							class="col-md-4">Last Name<br> <input type="text"
							id="text" name="lastname" placeholder="Enter your Last name"
							required></label>

					</div>
                    <br>
					<div class="row">
						<div class="col-md-2"></div>
						<label class="col-md-4">Email<br> <input type="email"
							id="text" name="email" placeholder="Enter your email" required>
						</label> <label class="col-md-4">Phone Number<br> <input
							type="phone" id="text" name="phone"
							placeholder="Enter Phone Number" required></label>
					</div>
                    <br>
					<div class="row">
						<div class="col-md-2"></div>
						<label class="col-md-8">Do you have any suggestions to
							make our website better? <br> <textarea id="message"
								name="subject" placeholder="Write your feedback here.."
								cols="48" rows="5" required></textarea>
						</label>
					</div>
                    <br>
					<div class="row">
						<div class="col">
                            <center>
                                <button type="submit" class="btn btn-primary button">Submit</button>
                            </center>
                            
                        </div>
						
					</div>
					 
			 	</form> 
			</div>
		 <script>
		 var feedback =document.getElementById("feedback").value;
		 if(feedback=="successfull"){
		 	
		 	swal("success!","Thank you for your feedback","success");
		 }
		 </script>
	 
</body>
</html>