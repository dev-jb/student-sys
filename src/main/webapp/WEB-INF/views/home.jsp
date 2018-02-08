<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="resources/css/mystyle.css">
<%@ include file="header.jsp"%>

<style type="text/css">
	.border-card {
		border-color:#009688 !important;
	}
	.container-fluid{
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
</head>

<body>

		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="resources/image/home.png" alt="First slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="resources/image/home_1.png" alt="Second slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="resources/image/home_2.png" alt="Third slide">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>

	<div class="container-fluid">
		<div style="background-color: white; padding-left: 0px;" >
		
		<header>
			<h1 style="text-align: center;">Welcome</h1>
		</header>
		<section>
			<p>On behalf of our faculty and staff, welcome to ABC Group of Educational Organization. Your success matters to us, and we are here to help guide and direct you to your ultimate educational and career goals. We provide an array of services which will help you succeed in achieving success no matter if your goal is to complete a course or a complete degree program.
			I encourage you to access all our services and ask any one of our professional staff on given mail on our contact address to assist you with your educational endeavors.
			I congratulate you for choosing such a wonderful educational institution.</p>
		</section>
		</div>
		<header>
			<h1 style="text-align: center;">From Our Students</h1>
		</header>
		<div class="row">
			<div class="col-sm-4" >
				<div class="card border border-card" style="width: 80%;">
				  <div >
				  <img class="card-img-top " src="image/p1.png" alt="Card image cap" style="width: 100px; height: 100px;" >
				  </div>
				  <!-- <img src="..." alt="..." class="rounded-circle" > -->
				  <div class="card-body">
				    <h4 class="card-title">Card title</h4>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				  </div>
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="card border border-card" style="width: 80%;">
				  <div >
				  <img class="card-img-top" src="image/p2.png" alt="Card image cap" style="width: 100px; height: 100px;" >
				  </div>
				  <!-- <img src="..." alt="..." class="rounded-circle" > -->
				  <div class="card-body">
				    <h4 class="card-title">Card title</h4>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				  </div>
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="card border border-card" style="width: 80%;">
				  <div >
				  <img class="card-img-top" src="image/p3.png" alt="Card image cap" style="width: 100px; height: 100px;" >
				  </div>
				  <!-- <img src="..." alt="..." class="rounded-circle" > -->
				  <div class="card-body">
				    <h4 class="card-title">Card title</h4>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				  </div>
				</div>
			</div>
			</div>
		<div class="footer" >
		<footer >
			<div id="f2">
				<a href="https://www.facebook.com">
					<i class="fa fa-facebook"></i>
				</a>
				<a href="https://www.twitter.com">
					<span style="padding-left:20px;"><i class="fa fa-twitter"></i></span>
				</a>
				<a href="https://www.pinterest.com">
					<span style="padding-left:20px;"><i class="fa fa-pinterest"></i></span>
				</a>
				<a href="https://www.plus.google.com">
					<span style="padding-left:20px;"><i class="fa fa-google-plus"></i></span>
				</a>	
			</div> 
			<div id="f1">
			© Copyright 2018 - rdzdeadskull - All Rights Reserved
			</div>
		</footer>
	</div>
	</div>
</body>
</html>