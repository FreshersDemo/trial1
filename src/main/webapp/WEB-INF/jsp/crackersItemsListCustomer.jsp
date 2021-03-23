<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Customer Menu</title>
	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"  rel="stylesheet">
	<link href="css/crackersItemsListCustomer.css" rel="stylesheet">
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>
	<nav role="navigation" aria-label="navigation" class="navbar navbar-default">
		<nav class="navbar-brand" aria-label="navbar" style="font-family:Lucida Calligraphy; font-size:33px; color:#e81f9b;">Crackers Distributor</nav> 
		<div class="navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/homepage"><em class="fa fa-home fa-2x"></em></a></li>
				<li><a href="/ShowCart"><em class="fa fa-shopping-cart fa-2x"></em></a></li>
				<li> 
					<c:if test="${empty emailid}">
						<a href="/login"><em class="fa fa-sign-in fa-2x"></em></a>
    				</c:if>    	
    				<c:if test="${not empty emailid}">
       					<a href="/login"><em class="fa fa-sign-out fa-2x"></em></a>
    				</c:if>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	
	<form action="/ShowMenuItemListCustomer1"  method="post"  class="container">
  		<select class= "box" name="sort" onchange='if(this.value != 0) { this.form.submit(); }'>
 			<option value="" disabled selected>Sort By</option>
  			<option value="asc" >Price:Low to High</option>
  			<option value="desc">Price:High to Low </option>
  		</select>
  	</form>
	<br><br><br><br>
	
	<div class="container">
		<c:if test="${addCartStatus==true}">
			<div class="alert alert-success" role="alert">
  				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  				<h4 style="text-align:center;font-size:20px;font-family:sergio;"><strong>Item Added to Cart Successfully!!</strong></h4>
  			</div>
		</c:if>
	</div>
	
	<div class="container">
		<table class="table table-hover">
		<caption style="text-align:center; font-family:Lucida Calligraphy; font-size:40px;color:black;">${category}</caption>
			<th scope="col">
				<c:forEach items="${crackersItemListCustomer}" var="crackers">
					<div class="column">
						<div class="card">
							<h2>${crackers.crackersName}</h2>
							<img class="myImages" id="myImg" alt="${crackers.crackersName}"style="width:100%"  src="<c:url value="/images/${crackers.crackersName}.jpg"/>">
							<div id="myModal" class="modal">
  								<span class="close">&times;</span>
  								<img class="modal-content" alt="img"id="img01">
  								<div id="caption"></div>
							</div>
							<h3> Price : Rs.${crackers.crackersPrice}</h3>
							<form action="/AddtoCart">
								<input type="hidden" value="${crackers.crackersId}" name="id">
								<p>Quantity : <input type ="number" value="1" min="1" name="quantity"></p>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div class="cart"> 
									<input type="submit" class="btn btn-success" value="Add to Cart">
								</div>
							</form>
						</div>
						<br>
					</div>
				</c:forEach>
				</th>
				<tbody>
					<c:forEach items="${sort}" var="crackers">
						<div class="column">
							<div class="card">
								<h2>${crackers.crackersName}</h2>
								<img class="myImages" alt="img" id="${crackers.crackersName}" style="width:100%"  src="<c:url value="/images/${crackers.crackersName}.jpg"/>">
								<div id="myModal" class="modal">
  									<span class="close">&times;</span>
  									<img class="modal-content"alt="img" id="img01">
  									<div id="caption"></div>
								</div>
								<h3> Price : Rs.${crackers.crackersPrice}</h3>
								<form action="/AddtoCart">
									<input type="hidden" value="${crackers.crackersId}" name="id">
									<p>Quantity : <input type ="number" value="1" min="1" name="quantity"></p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="cart"> 
										<input type="submit" class="btn btn-success" value="Add to Cart">
									</div>
								</form><br>
							</div>
						</div>		
					</c:forEach>
				</tbody>
			</table>
		</div>
	
	<script>
		var modal = document.getElementById('myModal');
		var images = document.getElementsByClassName('myImages');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		for (var i = 0; i < images.length; i++)
		{
	  		var img = images[i];
	  		img.onclick = function(evt)
	 		{
	    		modal.style.display = "block";
	    		modalImg.src = this.src;
	    		captionText.innerHTML = this.alt;
	  		}
		}
		var span = document.getElementsByClassName("close")[0];
		span.onclick = function() 
		{
	  		modal.style.display = "none";
		}


		
		window.setTimeout(function() 
		{
			$(".alert").fadeTo(500, 0).slideUp(500, function()
			{
				$(this).remove(); 
			});
		}, 500);
	</script>
</body>
</html>