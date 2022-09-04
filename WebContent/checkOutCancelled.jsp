<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Comfortaa&display=swap" rel="stylesheet">
<title>Cancel order</title>
<style>
	.img{
    	position: relative;
    	background: url("./image/cancelbg3.png");  
    	height: 100vh;
    	background-size: cover;                                                             
    	
	}
	.jumbotron {
		background: url("./image/cancelbg3.png"); 
		background-image: url("./image/cancelbg.gif");
		background-size: cover;
	}
</style>
</head>
<body class ="img">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" style="font-family: 'Comfortaa', cursive;">
		<div class="container">
			<h1 class="display-3">Cancel Order</h1>
		</div>
	</div>
	<div class="container" style="font-family: 'Comfortaa', cursive;">
		<h2>Your order has been canceled. </h2>
	</div>
	<div class="container">
		<p><a href="./main.jsp" class="btn btn-outline-dark" style="color: #7690AC; font-family: 'Comfortaa', cursive;"> &laquo; Home</a>		
	</div>	
</body>
</html>
