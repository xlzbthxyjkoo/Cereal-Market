<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Comfortaa&display=swap" rel="stylesheet">
<title>order complete</title>
<style>
   .img{
    	position: relative;
    	background: url("./image/orderconfirmationbg.gif");                                                               
    	height: 100vh;
    	background-size: cover;
	}
	
	.jumbotron {
		background-image: url("./image/orderconfirmationbg.gif");
		background-size: cover;
	}
</style>
</head>
<body class ="img">
	<%
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_shippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName = "";		

		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
		<br>
			<h1 class="display-3" style="font-family: 'Comfortaa', cursive;">ORDER COMPLETE</h1>
		</div>
	</div>
	<div class="container" style="font-family: 'Comfortaa', cursive;">
		<h2>Congratulations! Your order has been placed</h2>
		<p>
		<p>	Estimated delivery date:	<%	out.println(shipping_shippingDate);	%>
		<p>	Make sure you quote your order number, which is...	  <%	out.println(shipping_cartId);	%>	
		<p>
	</div>
	<div class="container">
		<p>	<a href="./main.jsp" class="btn btn-outline-dark" style="color:#7690AC; font-family: 'Comfortaa', cursive;"> &laquo; Home</a>		
	</div>
</body>
</html>
<%
	session.invalidate();

	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>
