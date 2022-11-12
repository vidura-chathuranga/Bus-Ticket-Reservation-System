<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="form.css">
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">

    <title>Contact us</title>
  </head>
  <body>
    
	<input type="hidden" id="isInserted" value="<%= request.getAttribute("Feedback") %>">
	
    <div class ="container-fluid">
      <div class="container">
        <div>
            <br><br>
          <!-- <h2 class="text-center mb-5 shadow-sm p-3" style="background-color:whitesmoke;">Contact US </h2> -->

        </div>

        <form action="feedback" method="post" >
        <div class="a">

        <div class="row">
            <div class="col-md-7 shadow rounded p-5">
                <div class="row">
                    <h2 style="padding-bottom: 50px;" >Contact US </h2>
                <div class="col mb-3">
                    <label class="form-label">First Name</label>
                    <input type="text" class="form-control" placeholder="First Name" name="firstname">
                </div>

                <div class="col mb-3">
                    <label class="form-label">Last Name</label>
                    <input type="text" class="form-control" placeholder="Last Name" name="lastname">
                </div>
            </div>

            <div class="col mb-3">
                <label class="form-label">Email</label>
                <input type="text" class="form-control" placeholder="Email" name="email">
            </div>

            <div class="col mb-3">
                <label class="form-label">phone number</label>
                <input type="text" class="form-control" placeholder="Phone number" name="phone">
            </div>

            <div class="col mb-3">
                <label class="form-label">Message</label>
                <textarea name="subject" class="form-control" placeholder="Write your message here" row ="10"></textarea>


                <br><br>
                <input type="submit" name="submit" value = "Submit "class="btn btn-primary btn-sm">
            </div>
        </div>
        
    </form>

             <div class="col-md-5">
                <div class="ml-5">
                <img src="busnew2.jpg" alt="" class="img-fuild" width="100%" > 

            </div > 
            </div>



        </div ></div></div>

        </div >

    
    <script type="text/javascript">
    	var isInserted = document.getElementById("isInserted").value;
    	
    	if(isInserted == "inserted"){
    		swal("Submitted!","Your inquiry has been submitted!","success");
    	}
    	if(isInserted == "Ninserted"){
    		swal("Oops!","There is an issue with your details","error");
    	}
    		
    </script>

  </body>
</html>