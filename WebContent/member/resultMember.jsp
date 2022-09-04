<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@1,600&display=swap" rel="stylesheet">
<title>회원 정보</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<style>
	body{
	font-family: 'Josefin Sans', sans-serif;
	}
   .img{
    	position: relative;
    	background-image: url("../image/resultbg.jpg");                                                               
    	height: 100vh;
    	background-size: cover;
	}
	
	   .img2{
    	position: relative;
    	background-image: url("../image/smilebg.jpg");                                                               
    	height: 100vh;
    	background-size: cover;
	}
	
		   .img3{
    	position: relative;
    	background-image: url("../image/cerealbg2.jpg");                                                               
    	height: 100vh;
    	background-size: cover;
	}

</style>
</head>
<%
			String msg = request.getParameter("msg");
			%>
			
<body class="<%if (msg != null) {
if (msg.equals("0")){
	out.println("img3");
	
}
else if (msg.equals("1")){

	out.println("img2");
	
}
else if (msg.equals("2")){

	out.println("img2");
	
}				
} else {
out.println("img");

} %>">



	<jsp:include page="/menu.jsp" />
	


	<div class="container" align="center">
<%

			if (msg != null) {
				if (msg.equals("0")) {
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <h2>Edited Your Profile ;)</h2>");
				}
				else if (msg.equals("1")) {
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <h2>Welcome To Yeji's Cereal Market</h2>");
				}
				else if (msg.equals("2")) {
					String loginId = (String) session.getAttribute("sessionId");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <br>");
					out.println(" <h2>" + "Welcome" + loginId + "  :)</h2>");
				}				
			} else {
				out.println(" <br>");
				out.println(" <br>");
				out.println(" <br>");
				out.println(" <br>");
				out.println("<h2>Good Bye :(  See you next time</h2>");
			}
		%>
	</div>	
</body>
</html>