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
     
    <title>Login | UserConnect</title>
  </head>
  <body class="background" background="/userConnect/resources/images/login/login.jpg">
    <div class="container-xl">
      <div class="row justify-content-center" style="margin-top:40px;">
      <img src="images\connect.png" alt="logo" style="margin-left:-20px;">
      <h3 class="text-white" style="padding-top:25px; padding-left:14px;">USERCONNECT</h3>
      </div>
      <div class="row justify-content-center">
        <small class="text-white">UserConnect helps you connect and share with the people in your life.</small>
      </div>
        <div class="row justify-content-center" >
            <div class="col-sm-4 col-style">
              <div class="form-container" id="visibility">
              <form>
                <div class="row justify-content-center" style="margin-bottom:20px;">
                  <h3>Forgot your password?</h3>
                </div>
                <div class="row justify-content-center" style="padding:0px 10px 20px 10px; font-size:13px;">
                  <small class="text-muted text-center">
                    Don't worry. Resetting your password is easy, just tell us the email address you regesstered with UserConnect.
                  </small>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" id="uname" placeholder="Email" name="uname">
                </div>
                <div class="align-items-center" style="margin-top:30px;">
                  <button type="submit" class="btn btn-primary btn-block" onClick="return addClass()">Next</button>
                </div>
                <div class="row justify-content-center" style="margin-top:30px;">
                  <!-- <span class="text-muted">Need an Account?</span>&nbsp; -->
                  <a href="register.html"><span>Sign Up</span></a>&nbsp;/&nbsp;
                  <a href="index.html"><span>Log In</span></a>
                </div>
              </form>
            </div>


            <!-- Div to show the varification code form -->
            <div class="form-container visibility" id="visibility-showLink">
              <form>
                <div class="row justify-content-center" style="margin-bottom:20px;">
                  <h3>Enter the Verification Code</h3>
                </div>
                <div class="row justify-content-center" style="padding:0px 10px 20px 10px; font-size:13px;">
                  <small class="text-muted text-center">
                    Verification Code has been sent to the Email used to register the Account.
                  </small>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" id="vcode" placeholder="Verification Code" name="vcode" maxlength="6" onkeypress="return alpha(event)">
                </div>
                <div class="align-items-center" style="margin-top:30px;">
                  <button type="submit" class="btn btn-primary btn-block">Verify</button>
                </div>
              </form>
            </div>


        <!-- Div to show the success / failed message form -->
        <div class="form-container visibility" id="visibility-showNewPass">
          <form>
            <div class="row justify-content-center" style="margin-bottom:20px;">
              <h3>Reset Password Here</h3>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="pwd" placeholder="Enter new Password" name="pwd">
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="cpwd" placeholder="Confirm Password" name="cpwd">
            </div>
            <div class="align-items-center" style="margin-top:30px;">
              <button type="submit" class="btn btn-primary btn-block">Reset</button>
            </div>
          </form>
        </div>


      <!-- Div for success message  -->
        <div class="form-container visibility" id="visibility-showMessage">
        <form>
          <div class="row justify-content-center" style="padding:0px 10px 20px 10px; font-size:13px;">
            <span class="text-muted text-center">
              YEY! You have successfully changed the password.
            </span>
          </div>
          <div class="row justify-content-center" style="margin-top:30px;">
            <a href="index.html">
              <span class="btn btn-primary btn-block">Log In</span>
            </a>
          </div>
          <!-- <div class="align-items-center" style="margin-top:30px;">
            <button type="submit" class="btn btn-primary btn-block">Reset</button>
          </div> -->
        </form>
      </div>

          <div class="row justify-content-center" style="margin-top:20px; font-size:10px;">

              <span class="text-white spacing" style="cursor:pointer;">Terms of use
                &nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;Help
                &nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;Privacy Policy</span>
          </div>
        </div>
      </div>

      <!-- Section Appears on click of next -->



    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/validation.js" />"></script>
  </body>
</html>
