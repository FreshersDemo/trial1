<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Cart</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="css/cart.css" rel="stylesheet">

</head>
<body>
	<nav role="navigation" aria-label="navigation"class="navbar navbar-default">
		<nav class="navbar-brand" aria-label="navbar" style="font-family:Lucida Calligraphy; font-size:33px; color:#e81f9b;">Crackers Distributor</nav> 
		<div class="navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/homepage"> <em class="fa fa-home fa-2x"></em></a></li>
				<li><a href="/ShowMenuItemListCustomer"> <em class="fa fa-arrow-circle-left fa-2x"></em></a></li>
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
		<div class="container">
		<c:if test="${removeCartItemStatus==true}">
			<div class="alert alert-danger" role="alert">
  				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  				<h4 style="text-align:center;"><strong>Item Deleted from the Cart Successfully!!</strong></h4>
  			</div>
		</c:if>
	</div>
	<div class="container">
		<table class="table table-striped w-auto">
		<caption style="text-align:center; font-family:Lucida Calligraphy; font-size:40px;color:black;">Cart</caption>
				<tr>
					<th scope="col">NAME</th>
					<th scope="col">CATEGORY</th>
					<th scope="col">QUANTITY</th>
					<th scope="col">SUB TOTAL</th>
					<th scope="col">ACTION</th>
				</tr>
				<c:forEach items="${cartItems}" var="cartItem">
					<tr>
						<td>${cartItem.cartCrackersName}</td>
						<td>${cartItem.cartCrackersCategory }</td>
						<td>${cartItem.cartQuantity}</td>
						<td>Rs.${cartItem.cartCrackersPrice}</td>
						<td><a class="btn btn-danger" href="/RemoveCartItem?id=${cartItem.cartCrackersId}">Remove</a></td>	
					</tr>
				</c:forEach>	
		</table>
	</div>
		<c:if test="${total!=0 }">
			<div style="font-size:25px; text-align:center;">Total = Rs. ${total }</div><br>
			<div style="text-align:center;"><button class="box"  id="myBtn">Checkout</button><br><br><br>
				<!-- The Modal -->
				<div id="myModal" class="modal">
	  				<!-- Modal content -->
	  				<div class="modal-content">
	    				<span class="close">&times;</span>
	     				<p style="text-align:center;">The Total Price is Rs.${total }. Thanks for visiting our Web site!!!</p>
	     				<p style="text-align:center;">The Products you purchased will be delivered soon.</p> 
	   					<div style="text-align:center;"><a class="btn btn-success" href="/TruncateCartItem">OK</a>
							<a class="btn btn-danger" href="/ShowCart">Cancel</a>
						</div>
  					</div>
				</div>
			</div>
		</c:if>
		
	<script>

		var modal = document.getElementById("myModal");
		var btn = document.getElementById("myBtn");
		var span = document.getElementsByClassName("close")[0];
		btn.onclick = function() 
		{
		  modal.style.display = "block";
		}
		span.onclick = function() 
		{
		  modal.style.display = "none";
		}
		window.onclick = function(event)
		{
		  if (event.target == modal) 
		  {
		    modal.style.display = "none";
		  }
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