<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/global.css" />" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
	
    <title>Register | UserConnect</title>
    <script>
    function onSubmit() {
    	debugger;
      var firstName = document.getElementById('firstName');
       if (firstName.value== "") {
    	   firstName.style.border="solid 1px red";
       alert('Please provide First Name');
       return false;
     }else {
    	 firstName.style.border="";
     }
      var lname = document.getElementById('lastName');
       if (lastName.value == "") {
    	   lastName.style.border="solid 1px red";
       alert('Please provide Last Name');
       return false;
     }else {
    	 lastName.style.border="";
     }
       var email = document.getElementById('userName');
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email.value)) {
          email.style.border="solid 1px red";
        alert('Please provide a valid email address');
        return false;
      }else {
        email.style.border="";
      }
      var pass = document.getElementById("password");
      if(pass.value == ""){
        pass.style.border="solid 1px red";
        alert('Please Provide Password');
        return false;
      } else {
        pass.style.border="";
      }
      var cpass = document.getElementById("cpassword");
      if(cpass.value == ""){
        cpass.style.border="solid 1px red";
        alert('Please Provide Confirm Password');
        return false;
      } else {
        cpass.style.border="";
      }
      if(pass.value!=cpass.value){
        cpass.style.border="solid 1px red";
        pass.style.border="solid 1px red";
        alert("Confirmation Password does not match the Password");
        return false;
      } else {
        cpass.style.border="";
        pass.style.border="";
      }
      document.forms[0].subAction.value = "REGISTER";
    } //end onSubmit()
    
    function uniqueValidation(){
    	debugger;
    	userName = document.forms[0].userName.value;
    	 $.ajax({
    		type : "GET",
    		url : "/userConnect/uniqueUserCheck",
    		data : {
    			"userName" : userName
    		},
    		async: false,
    		success: function(data){
    			userValidation(data);
    		}
    	});
    	 
    }
    
    function userValidation(data){
    	debugger;
    	var a=1;
    	var b=1;
    	alert("this is inside ajax function: "+data);
    }
    
    </script>
  </head>
  <body class="background" background="/userConnect/resources/images/login/login.jpg">
    <div class="container-xl">
      <div class="row justify-content-center" style="margin-top:40px;">
      <img src="/userConnect/resources/images/connect.png" alt="logo" style="margin-left:-20px;">
      <h3 class="text-white" style="padding-top:25px; padding-left:14px;">USERCONNECT</h3>
      </div>
      <div class="row justify-content-center">
        <small class="text-white">UserConnect helps you connect and share with the people in your life.</small>
      </div>
        <div class="row justify-content-center">
            <div class="col-sm-4 col-style">
              <div class="form-container">
                <form method="post" action="/userConnect/register" onsubmit="return onSubmit()"  modelAttribute="register">
                
                <input type=hidden name="subAction"/>
                
                
                  <div class="row justify-content-center" style="margin-bottom:20px;">
                    <h3>Sign Up to your Account</h3>
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" id="firstName" placeholder="First Name" name="firstName">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="lastName">
                  </div>
                  <div class="form-group">
                    <!-- <label for="uname">Username:</label> -->
                    <input type="text" class="form-control" id="userName" placeholder="Email" name="userName" onblur="uniqueValidation(this);">
                  </div>
                  <div class="form-group">
                    <!-- <label for="pwd">Password:</label> -->
                    <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                  </div>
                  <div class="form-group">
                    <!-- <label for="pwd">Password:</label> -->
                    <input type="password" class="form-control" id="cpassword" placeholder="Confirm Password" name="cpassword">
                </div>
                  <div class="align-items-center" style="margin-top:30px;">
                    <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
                  </div>
                  <div class="row justify-content-center" style="margin-top:30px;">
                    <span class="text-muted">Already have an Account?</span>&nbsp;
                    <a href="login"><span>Log In</span></a>
                  </div>
              </form>
            </div>
          <div class="row justify-content-center" style="margin-top:20px; font-size:10px;">

              <span class="text-white spacing" style="cursor:pointer;">Terms of use
                &nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;Help
                &nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;Privacy Policy</span>
          </div>
        </div>
      </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
  </body>
</html>
