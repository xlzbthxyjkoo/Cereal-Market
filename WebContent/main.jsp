<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>Welcome to Yeji's Cereal Market</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<style>
   body{ 
        padding: 0px;
        margin: 0px;               
   }
   
   .img{
    	position: relative;
    	background-image: url("../image/cerealbg1.jpg");                                                               
    	height: 100vh;
    	background-size: cover;
	}
        
	
	h1 {
		text-align: center;
	}
	img {
		max-width:100%;
		z-index: 1;
	}
	.a{
		width: 500px;
		margin 0px auto;
	}
	.a img{
		transition: all0.2s linear;
	}
	
	.a:hover img {
		transform: scale(1.4);
	}
		
 
</style>
</head>

<body style="background-color: #fedd14;">

<!-- 메뉴바 호출 -->
<jsp:include page="/menu.jsp" />

<div class="img"> 
	<div class="a">
	<a class="navbar-brand" href="cheeriosproduct.jsp" ><img src="./image/cheerios.png" alt="" style="margin-left: 200px"></a>
</div>
<div class="a">
	<a class="navbar-brand" href="cinnamonproduct.jsp" ><img src="./image/cinnamon.png" alt="" style="margin-left: 700px; margin-top:-300px; postion: absolute"></a>
</div>
<div class="a">
	<a class="navbar-brand" href="luckycharmsproduct.jsp" ><img src="./image/luckycharms.png" alt="" style="margin-left: 180px; margin-top:-120px; postion: absolute;"></a>
</div>
<div class="a">
	<a class="navbar-brand" href="kelloggproduct.jsp" ><img src="./image/kellogg.png" alt="" style="margin-left: 700px; margin-top:-230px; postion: absolute;"></a>
</div>

</div>

</body>
</html>