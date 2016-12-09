<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
</head>
<style>
.navbar-default .navbar-text {
  color: #999;
}
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
</style>
<body>
	<c:if test="${aa}">
		<c:set var="a" scope="application" value="0" />
	</c:if>

	<c:if test="${adminhello}">
		<c:set var="a" scope="application" value="1" />
	</c:if>
	

	<c:if test="${isLoggedInUser}">
		<c:set var="a" scope="application" value="2" />
</c:if>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="adminpage56">EasyShop</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
				
			<c:if test="${a eq 1}">
			<li><a href="managepage"><span class="glyphicon glyphicon-log-in"></span>Home</a></li>
			</c:if>
			<c:if test="${a eq 0 }">
			<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">

          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="tv.jpeg">TV</a></li>
          <li><a href="in_SM-N9208ZDUINS_007_Front_gold.jpg">Mobiles</a></li>
          <li><a href="laptop.jpg">Laptops</a></li>
          <li><a href="watches.jpg">Watches</a>
          <li><a href="shoes.jpg">Footwear </a></li>
<li><a href="backpack.jpg">Bags</a></li>
<li><a href="pendrive.jpg">Pendrives</a></li>
<li><a href="cover.jpg">FlipCovers</a></li>
<li><a href="hp-estantion.jpg">Printers</a></li>
        </ul>
      </li>
      
      
			<li><a href="Aboutus">Aboutus</a></li>
			<li><a href="Contactus">Contactus</a></li>
			</ul>
			</div>
			</c:if>
			<c:if test="${a eq 2 }">
			<li><a href="Aboutus">Aboutus</a></li>
			<li><a href="Contactus">Contactus</a></li>
			</c:if>

				</ul>
				
				
				<ul class="nav navbar-nav navbar-right">
				<c:if test="${a eq 2}">
					<li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart ">
					</span>MyCart(${numberOfProduct})</a></li>
			<li><a style = "color:white">Welcome ${username }</a></li>
						<li style="display: inline-block"><a href="logout"><span
								class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</c:if>
				
				
					<c:if test="${a eq 1}">
						<li>  <a style = "color:white"  >Welcome ${Adminname }</a></li>
						<li style="display: inline-block"><a href="logout"><span
								class="glyphicon glyphicon-log-in"></span> Logout</a></li>	
					</c:if>
					
					
					
					<c:if test="${a eq 0}">
						<li><a href="Loginpage"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
<li><a href="registeruser"><span
							class="glyphicon glyphicon-share">SignUp</a></span></li>
					</c:if>
					
				</ul>
			</div>
		</div>
	</nav>
	
	
</body>

</html>