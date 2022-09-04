<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap" rel="stylesheet">

<title>Shipping Information</title>
<style>
   .img{
    	position: relative;
    	background-image: url("./image/cartbg.jpg");                                                               
    	height: 100vh;
    	background-size: cover;
	}

	.jumbotron {
		background-image: url("./image/cartbg.jpg");
		background-size: cover;
		}
</style>
</head>
<body class ="img">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3" style="font-family: 'Indie Flower', cursive;">SHIPPING INFORMATION</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Indie Flower', cursive;">NAME</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Indie Flower', cursive;">DELIVERY DATE</label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" placeholder="(yyyy/mm/dd)" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Indie Flower', cursive;">COUNTRY NAME</label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Indie Flower', cursive;">ZIP CODE</label>
				<div class="col-sm-3">
					<input id ="member_post" name="zipCode" type="text" class="form-control" readonly onclick="findAddr()"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Indie Flower', cursive;">ADDRESS</label>
				<div class="col-sm-5">
					<input id="member_addr" name="addressName" type="text" class="form-control" readonly/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Indie Flower', cursive;">Detailed Address</label>
				<div class="col-sm-5">
					<input id="member_DetailedAddress" name="DetailedAddress" type="text" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-outline-warning" role="button" style="background-color: #F5F5DC; font-family: 'Indie Flower', cursive;"> BACK </a> 
					<input	type="submit" class="btn btn-outline-success" value="submit" style="background-color: #F0FFF0; font-family: 'Indie Flower', cursive;" />
					<a href="./checkOutCancelled.jsp" class="btn btn-outline-danger" role="button" style="background-color: #FFF5EE; font-family: 'Indie Flower', cursive;"> CANCEL </a>
				</div>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
            else if(detailAddr !== ''){
                document.getElementById("member_DetailedAddress").value = detailAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>
