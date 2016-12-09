<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@include file="/WEB-INF/views/common-header.jsp" %>
     
     
  <!DOCTYPE html>
<html lang="en">
<head>
<title>EasyShop</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
        right:10px;
      margin-bottom: 0;
      border-radius: 0;
      background-color:#34495E;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color:#DA70D6;
      color: white;
      padding: 15px;
      width:1264px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}

  </style>
</head>
<body>

<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
<br>
<br>
<br>
<br>
      <p><a href="#">Track order</a></p>
      <p><a href="Contactus">24x7 Customer Care</a></p>
      <p><a href="#">Offer Zone</a></p>
<br>
<div class="psp">
<body style=background-color="orange">
<img src=<c:url value="/images/Cart.jpg" /> width="200" height="230">
      </div>
</div>
    <div class="col-sm-8 text-left">
<body style=background-color="Lavender">
      <center><h1>Welcome To EasyShop</h1></center>
      <hr>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#mycarousel" data-slide-to="3"></li>
  
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src=<c:url value="/images/hello.jpg" /> alt="Chania" width="1000" height="20">
      <div class="carousel-caption">
       
      </div>
    </div>

    <div class="item">
      <img src=<c:url value="/images/dress.jpg" /> alt="Chania" width="1000" height="600">
      <div class="carousel-caption">
      </div>
    </div>

    <div class="item">
      <center><img src=<c:url value="/images/phn.jpg" /> alt="Flower"width="1000" height="500"></center>
      <div class="carousel-caption">
       
      </div>
    </div>
 <div class="item">
      <center><img src=<c:url value="/images/backpack.jpg" /> alt="Flower"width="1000" height="500"></center>
      <div class="carousel-caption">
       
      </div>
    </div>

</div>

  
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
       
  
 </div>
<center><h4>Variety Collection</h4></center>
</div>
    <div class="col-lg-2 sidenav">
      <div class="well">
        <p>Insane Offers</p>
</div>
<div class="cost">
<img src=<c:url value="/images/mobiles.jpg" /> width="200" height="230">
<br>
<img src=<c:url value="/images/shop.jpg" /> width="200" height="230">
      </div>
</div>
    </div>
  </div>
</div>
 
     <!--%@include file="/WEB-INF/views/listedItem.jsp" %>-->
 <%@include file="/WEB-INF/views/common-footer.jsp" %>
</body>
	</html>