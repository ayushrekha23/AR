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
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <title>Update Profile | UserConnect</title>
    <script>
    // function loadFile(event) {
    //   var reader = new FileReader();
    //   reader.onload = function(){
    //     var output = document.getElementById('output');
    //     output.src = reader.result;
    //   };
    //   reader.readAsDataURL(event.target.files[0]);
    // }

    $(document).ready(function() {
      var readURL = function(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();
              reader.onload = function (e) {
                  $('.profile-pic').attr('src', e.target.result);
              }
              reader.readAsDataURL(input.files[0]);
          }
      }


      $(".file-upload").on('change', function(){
          readURL(this);
      });

      $(".upload-button").on('click', function() {
         $(".file-upload").click();
      });
    });

    </script>
  </head>
<body>


<div class="container-xl col-style">
      <div class="row justify-content-center">
        <div class="col-sm-12 col-style">
    <div class="form-container">
      <form method="post">
        <div class="row justify-content-center">
          <div class="form-group">
              <div class="circle">
                <img class="profile-pic" src="">
                <Small class="upload-text">Upload Profile Picture</small>
              </div>
              <div class="p-image">
                <i class="fa fa-camera upload-button"></i>
                 <input class="file-upload" type="file" accept="image/*"/>
              </div>
         </div>
        </div>
        <div class="container">


<!-- <div class="justify-content-md-center">
        <div class="col col-lg-2">

          <div class="form-group">
            <input type="text" class="form-control" id="fname" placeholder="First Name" name="fname">
          </div>
</div>
        </div> -->
    <div class="row justify-content-md-center">
      <div class="col col-lg-5">
        <div class="form-group">
          <input type="text" class="form-control" id="fname" placeholder="First Name" name="fname">
        </div>
        <div class="form-group">
          <input type="text" class="form-control" id="lname" placeholder="Last Name" name="lname">
        </div>
        <div class="form-group">
          <input type="text" class="form-control" id="uname" placeholder="Email" name="uname">
        </div>
      </div>
    </div>


      </form>
      </div>
    </div>
  </div>
</div>



    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/validation.js" />"></script>

</body>
</html>