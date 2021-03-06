<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/global.css"> -->
    
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/global.css" />" rel="stylesheet">
    
    <%-- <link rel="stylesheet" href="<c:url value='/resources/public/css/global.css'/>"/>
	<link rel="stylesheet" href="<c:url value='/resources/public/css/bootstrap.min.css'/>"/>  --%>
    <title>Login | UserConnect</title>
    <script>
    function onSubmit() {
      var email = document.getElementById('uname');
       var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
       if (!filter.test(email.value)) {
         email.style.border="solid 1px red";
       alert('Please provide a valid email address');
       return false;
     }else {
       email.style.border="";
     }
      var pass = document.getElementById("pwd");
      if(pass.value == ""){
        pass.style.border="solid 1px red";
        alert('Please Provide Password');
        return false;
      } else {
        pass.style.border="";
      }
    } //end onSubmit()
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
              <form class="form-login" method="post" onsubmit="return onSubmit()"
			action="home">
              <!-- <form name="login" method="post" action="home.html" onsubmit="return onSubmit()">-->
                <div class="row justify-content-center" style="margin-bottom:20px;">
                  <h3>Log In to your Account</h3>
                </div>
                <div class="form-group">
                  <!-- <label for="uname">Username:</label> -->
                  <input type="text" class="form-control" id="uname" placeholder="Email" name="uname">
                </div>
                <div class="form-group">
                  <!-- <label for="pwd">Password:</label> -->
                  <input type="password" class="form-control" id="pwd" placeholder="Password" name="pwd">
                </div>
                <div class="row justify-content-end">
                  <a href="forgetPass" style="font-size:12px;"><span>Forgot Password?<span></a>
                </div>
                <div class="align-items-center" style="margin-top:30px;">
                  <button type="submit" class="btn btn-primary btn-block">Log In</button>
                </div>
                <div class="row justify-content-center" style="margin-top:30px;">
                  <span class="text-muted">Need an Account?</span>&nbsp;
                  <a href="register"><span>Sign Up</span></a>
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
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
  </body>
</html>
