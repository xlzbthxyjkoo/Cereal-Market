<%@ page contentType="text/html; charset=utf-8"%>
<html>

<head>

<title>Welcome to Yeji's Market</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c&display=swap" rel="stylesheet">

<!-- <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"> -->




<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    
    .img{
    position: relative;
    background-image: url("./image/cerealbg1.jpg");                                                               
    height: 100vh;
    background-size: cover;
}
 
	.img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.3);                                                                 
   z-index:1;
}

	.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 2;
     width: 600px;
     text-align: center;
	}

	
	html, body {
  		height: 100%;
	}

	.wrap {
  		height: 100%;
  		display: flex;
  		align-items: center;
  		justify-content: center;
	}

	.button {
  		width: 140px;
  		height: 45px;
  		font-family: 'Roboto', sans-serif;
  		font-size: 11px;
  		text-transform: uppercase;
  		letter-spacing: 2.5px;
  		font-weight: 500;
  		color: #000;
  		background-color: #fff;
  		border: none;
  		border-radius: 45px;
  		box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  		transition: all 0.3s ease 0s;
  		cursor: pointer;
  		outline: none;
  	}

	.button:hover {
  		background-color: black;
  		box-shadow: 0px 15px 20px rgba(250, 245, 107, 0.4);
  		color: #fff;
  		transform: translateY(-7px);
	}

        

</style>

</head>


<body>


<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  
  <a class="navbar-brand" href="main.jsp"><img src="./image/cerealicon2.png" style="width:10%; height:10%;" /></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
</nav>



<!-- 로그인 안내 -->
      
      <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:white; font-family: 'M PLUS Rounded 1c', sans-serif;">404</h1>
        <p class="display-4" style="color:red; font-family: 'M PLUS Rounded 1c', sans-serif;">Page Not Found</p>
        <div class="wrap">
  			<button class="button" onclick="javascript:history.back()">Back</button>
		</div>
       </div>
       <div class="img-cover"></div>
    </div>

</body>
</html>