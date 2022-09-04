<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<title>Welcome to Yeji's Cereal Market</title>
<style type="text/css">
   body { 
            padding: 0px;
            margin: 0px;            
        }
        
    .img{
    	height: 100vh;
    	position: relative;
    	background-image: url("../image/cerealbg2.jpg");                                                            
    	background-size: cover;
	}
        
         	
   .img-cover{
   		position: absolute;
   		height: 100%;
   		width: 100%;
   		text-aligh:center;
   		background-color: rgba(0, 0, 0, 0.3);                                                                 
   		z-index:1;
	}
        	
    .img .content{
     	position: absolute;
     	top:50%;
     	left:50%;
     	transform: translate(-50%, -50%);                                                                   
     	z-index: 2;
     	width: 300px;
     	text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="/menu.jsp" />

	    <div class="img">
        <div class="content">
        <h3 class="display-4" style="color:black;font-family: 'Pacifico', cursive">Account</h3>
        <p class="display-7" style="color:white;font-family: 'Pacifico', cursive">Registered Customers</p>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-warning'>");
					out.println("Please check your ID and password.");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">

				<div class="form-group mb-3">
				<label for="inputUserName" class="sr-only" style="font-family: 'Pacifico', cursive">User Name</label> 
					<input type="text" class="form-control" placeholder="ID" name='id'
						required autofocus class="form-control rounded-pill border-0 shadow-sm px-4">
				</div>
				<div class="form-group mb-3">
					<label for="inputPassword" class="sr-only" style="font-family: 'Pacifico', cursive">Password</label> 
					<input type="password" class="form-control" placeholder="Password"
						name='password' required class="form-control rounded-pill border-0 shadow-sm px-4 text-primary">
				</div>
				<button class="btn btn-Dark btn-block text-uppercase mb-2 rounded-pill shadow-sm" type="submit" style="background-color:black; color:white;font-family: 'Pacifico', cursive">Log In</button>

			</form>
		</div>
	<div class="img-cover"></div>
	</div>
</body>
</html>