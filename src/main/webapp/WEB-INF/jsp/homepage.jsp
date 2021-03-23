<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home page</title>
	<script src="js/menu.js"></script>
	<script src="js/wow.js"></script>
	<script> new WOW().init(); </script>
	<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet'>
	<link href="css/animate.css" rel="stylesheet"> 
	<link href="css/bootstrap.css" rel="stylesheet"> 
	<link href="css/homepage.css" rel="stylesheet"> 

</head>

<body>
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="col-sm-4 logo animated wow fadeInLeft" data-wow-delay=".5s">
					<h1 style="font-size:30px; font-family:Lucida Calligraphy;">Crackers <span>Distributor </span></h1>	
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="banner">
	   	<img style="padding:3px 2px;" src="static/images/front1.jpg" alt="front" width=100%; height=600px;/>
	</div>
	<div class="clearfix"> </div>  
	<br><br><br>
	<h1 style="font-family:Lucida Calligraphy;text-align:center;font-size:35px;color:#e81f9b;"> Shop By Categories</h1>
	<br><br>
	
	<div class="con-tp">
		<div class="container">
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) {this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInLeft" data-wow-delay=".3s">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box">
							<img src="static/images/bijili crackers.jpg" alt="image" class="img-responsive zoom-img">
						</div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4>  <input class="boxes" type="submit" name="category" value="Loose Crackers"/></h4>
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInDown animated" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box">
							<img src="static/images/Sound Crackers1.jpg" alt="image" class="img-responsive zoom-img">
						</div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Sound Crackers"/></h4>	
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInRight" data-wow-delay=".3s">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box">
							<img src="static/images/Garlands.jpg" alt="image" class="img-responsive zoom-img">
						</div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Garlands"/></h4>	
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<div class="clearfix"></div>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInLeft" data-wow-delay=".3s">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box"><img src="static/images/sparklers.jpeg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Sparklers"/></h4>	
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInUp animated" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box"><img src="static/images/Rockets.jpg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Rockets"/></h4>	
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInRight" data-wow-delay=".3s">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box"><img src="static/images/Flower Pots.jpeg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Flower Pots"/></h4>	
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<div class="clearfix"></div>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInLeft" data-wow-delay=".3s">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box"><img src="static/images/Chakkras.jpeg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Ground Chakkars"/></h4>
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInDown animated" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">			
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box"><img src="static/images/Repeating Shots.jpg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Repeating Shots"/></h4>	
							</div>
						</div>
					</div>
				</div>
			</form>
	
			<form action="/ShowMenuItemListCustomer" method="post" onchange='if(this.value != 0) { this.form.submit();}'>
				<div class="col-md-4 con-tp-lft animated wow fadeInRight" data-wow-delay=".3s">
					<div class="content-grid-effect slow-zoom vertical">
						<div class="img-box"><img src="static/images/Fountains.jpg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content simpleCart_shelfItem">
								<h4> <input class="boxes" type="submit" name="category" value="Fountains"/></h4>	
							</div>
						</div>
					</div>
				</div>
			</form>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-6 top-footer animated wow fadeInLeft" data-wow-delay=".4s">
					<h3>Follow Us On</h3>
					<div class="social-icons">
						<ul class="social">
							<li><a href="https://www.facebook.com"><em></em></a> </li>
							<li><a href="https://www.twitter.com"><em class="facebook"></em></a></li>	
							<li><a href="https://www.google.com"><em class="google"></em> </a></li>
							<li><a href="https://www.instagram.com"><em class="linked"></em> </a></li>	
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			
				<div class="col-md-6 top-footer1 animated wow fadeInRight" data-wow-delay=".4s">
					<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sparklers of Crackers Spread </h3>
					<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Glitters Around The World.</h3>
				</div>
				<div class="clearfix"> </div>	
			</div>	
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="col-md-3 footer-bottom-cate animated wow fadeInLeft" data-wow-delay=".4s">
					<br><br><br><br>
					<h6> Crackers Distributor Agency in TamilNadu</h6>	
				</div>
				<div class="col-md-3 footer-bottom-cate animated wow fadeInLeft" data-wow-delay=".4s"> </div>
				<div class="col-md-3 footer-bottom-cate animated wow fadeInLeft" data-wow-delay=".4s"></div>
				<div class="col-md-3 footer-bottom-cate cate-bottom animated wow fadeInRight" data-wow-delay=".4s">
					<h6>Our Address</h6>
					<ul>
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : Ram Avenue, 7th block, <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Coimbatore.</span></li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:NSfireworks@example.com">NSfireworks@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : +91 88381 38736</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<p class="footer-class animated wow fadeInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;"> © Crackers Distributor. All Rights Reserved</p>
			</div>
		</div>
	</div>
</body>
</html>