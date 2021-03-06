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
     
   <title>Home | UserConnect</title>
   <script>
     function searchresult(){
       var i;
       i=i+1;
       alert("Hi");
     }
   </script>
 </head>
 <body>
  <header>
   <nav class="navbar navbar-expand-md navbar-light stiky-top bg-primary" style="position:relative;">
     <a class="navbar-brand" href="#">
    <img src="/userConnect/resources/images/connect-white.png" width="30" height="30" class="d-inline-block align-top" alt=""/>
     </a>

     <form class="form-inline search-style">
      <input class="form-control mr-sm-2 search-style" type="search" placeholder="Search" aria-label="Search" style="width:40%">
      <div class="btn" style="position:relative; left:-50px;">
        <a href="#" onclick="searchresult();">
          <i class="fas fa-search"></i>
          </a>
      </div>
    </form>
     <div class="navbar navbar-expand ml-auto">
       <ul class="navbar-nav">
         <li class="nav-item active">
           <a class="nav-link" href="#">
             <span class="text-light nav-icon-style">
               <i class="fas fa-user"></i>
               <span class="responce">Profile</span>
             </span>
           </a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="#">
             <span class="text nav-icon-style">
             <i class="fas fa-comment"></i>
            <span class="responce">Message</span>
           </span>
         </a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="#">
             <span class="text nav-icon-style">
               <i class="fab fa-connectdevelop"></i>
               <span class="responce">Connect User</span>
             </span>
           </a>
         </li>
         <li class="nav-item dropdown ">
           <a class="nav-link dropdown-toggle nav-icon-style" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <span class="text">
               <img src="/userConnect/resources/images/ProfilePic_Default.png" width="30" height="30" alt=""/>
            <span class="responce">User Name</span>
            </span>
           </a>
           <div class="dropdown-menu dropdown-style" aria-labelledby="navbarDropdownMenuLink">
             <form class="dropdown-item search-style-response ">
              <input class="form-control mr-sm-2 search-style-response" type="search" placeholder="Search" aria-label="Search">
                <a href="#" class="search-icon-style" onclick="searchresult();">
                  <i class="fas fa-search"></i>
                  </a>
             </form>
             <a class="dropdown-item" href="#">
               <i class="fas fa-user-cog"></i>
               <span>Setting</span>
             </a>
             <a class="dropdown-item" href="#">
               <i class="fas fa-sign-out-alt"></i>
               <span>Log Out</span>
             </a>
           </div>
         </li>
       </ul>
     </div>
   </nav>
</header>


   <main role="main">

     <div class="container-fluid">
      <img src="/userConnect/resources/images/profile/cover.jpg" class="img-fluid cover-style" alt="Responsive image">
      </div>


     <div class="container-fluid style-body">
       <div class="container-xl " >
       <div class="row">
         <div class="col-lg-3 profile-style">
           <div class="row justify-content-center">
          <img src="/userConnect/resources/images/profile/cover.jpg" class="justify-content-center" alt="Responsive image" width="150"height="150" style="border-radius: 100%; border: solid 10px rgba(151,151,151,1);">
          </div>
           <h2>Heading</h2>
           <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit.
             Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
           <p><a class="btn btn-secondary" href="#" role="button">View details �</a></p>
         </div><!-- /.col-lg-4 -->
         <!-- <div class="col-lg-4">
           <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
           <h2>Heading</h2>
           <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
           <p><a class="btn btn-secondary" href="#" role="button">View details �</a></p>
         </div>
         <div class="col-lg-4">
           <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
           <h2>Heading</h2>
           <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
           <p><a class="btn btn-secondary" href="#" role="button">View details �</a></p>
         </div> -->
       </div><!-- /.row -->


       <!-- START THE FEATURETTES -->

       <hr class="featurette-divider">

       <div class="row featurette">
         <div class="col-md-7">
           <h2 class="featurette-heading">First featurette heading. <span class="text-muted">Itll blow your mind.</span></h2>
           <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
         </div>
         <div class="col-md-5">
           <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
         </div>
       </div>

       <hr class="featurette-divider">

       <div class="row featurette">
         <div class="col-md-7 order-md-2">
           <h2 class="featurette-heading">Oh yeah, its that good. <span class="text-muted">See for yourself.</span></h2>
           <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
         </div>
         <div class="col-md-5 order-md-1">
           <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
         </div>
       </div>

       <hr class="featurette-divider">

       <div class="row featurette">
         <div class="col-md-7">
           <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
           <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
         </div>
         <div class="col-md-5">
           <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
         </div>
       </div>

       <hr class="featurette-divider">

       <!-- /END THE FEATURETTES -->
       </div>
     </div><!-- /.container -->


     <!-- FOOTER -->
     <footer class="container">
       <p class="float-right"><a href="#">Back to top</a></p>
       <p>� 2017-2019 Company, Inc. � <a href="#">Privacy</a> � <a href="#">Terms</a></p>
     </footer>
   </main>





   <script src="https://kit.fontawesome.com/603f597a3e.js" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
   <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
 </body>
</html>
