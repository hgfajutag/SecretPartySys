<%@ page import="java.sql.*" %>
<%@ page  session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>RegisterPlace</title>
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="neon.css" type="text/css">
  <!-- Script: Make my navbar transparent when the document is scrolled to top -->
  <script src="js/navbar-ontop.js"></script>
  <!-- Script: Animated entrance -->
  <script src="js/animate-in.js"></script>
</head>

<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation" style=""> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item mx-3">
            <a class="nav-link text-light" href="#"><b>PLACES</b></a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#menu"><b>PARTIES</b></a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#venue"><b>REQUESTS</b></a>
          </li>
        </ul>
        <a class="btn navbar-btn btn-secondary mx-2 shadowed" href="#book"><b>LOG OUT</b></a>
      </div>
    </div>
  </nav>
  <!-- Cover -->
  <div class="align-items-center d-flex py-5 cover section-fade-in-out" style="background-image: url(&quot;assets/background/cover_dark.jpg&quot;);">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-3">
          <form class="p-4" method="post"></form>
            <h4 class="mb-4 text-center" contenteditable="true"><span style="background-color: rgb(247, 6, 85);">&nbsp;Welcome Host!&nbsp;</span></h4>
      </div>
             <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>       <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>       <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
      
             <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
             <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
             <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
          <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
             <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
             <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
             <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      <div class="row">
      	
    	<form method="POST" action="Register-Place.jsp">
        <div class="col-md-12"><button type="submit" class="btn mt-4 btn-block p-2 btn-info shadowed">Register Place</button></div>
      </form>
      </div>
       <div class="row">
        <div class="col-md-12"></div>
    
        <div class="col-md-12"></div>
      </div>
      <div class="row">
      <form method="POST" action="Create-Party.jsp">
        <div class="col-md-12"><button type="submit" class="btn mt-4 btn-block p-2 btn-info shadowed">Create Party</button></div>
    </form>
    <form method="POST" action="Host-History.jsp">
        <div class="col-md-12"><button type="submit" class="btn mt-4 btn-block p-2 btn-info shadowed">History</button></div>
    </form>
      </div>
    </div>
  </div>
  <!-- Intro -->
  <!-- Gallery -->
  <!-- Menu -->
  <!-- Carousel reviews -->
  <!-- Carousel venue -->
  <!-- Events -->
  <!-- Book section -->
  <!-- Footer -->
  <!-- JavaScript dependencies -->
  <div class="py-5">
    <div class="container">
      <div class="row"></div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" crossorigin="anonymous" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <!-- Script: Smooth scrolling between anchors in the same page -->
  <script src="js/smooth-scroll.js"></script>
</body>

</html>