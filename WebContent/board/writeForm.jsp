<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String name = (String) request.getAttribute("name");
	
%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Signika+Negative&display=swap" rel="stylesheet">
<title>Board</title>
<style>
   .img{
    	position: relative;
    	background-image: url("./image/boardbg1.gif");                                                               
    	height: 100vh;
    	background-size: cover;
	}

	.jumbotron {
		background-image: url("./image/boardbg1.gif");
		background-size: cover;
		}
</style>
</head>
<script type="text/javascript">
	function checkForm() {
		if (!document.newWrite.name.value) {
			alert("성명을 입력하세요.");
			return false;
		}
		if (!document.newWrite.subject.value) {
			alert("제목을 입력하세요.");
			return false;
		}
		if (!document.newWrite.content.value) {
			alert("내용을 입력하세요.");
			return false;
		}		
	}
</script>
<body class ="img" style="font-family: 'Gowun Dodum', sans-serif;">
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Q&A BOARD</h1>
		</div>
	</div>

	<div class="container">
		<form name="newWrite" action="./BoardWriteAction.do"
			class="form-horizontal" method="post" onsubmit="return checkForm()">
			<input name="id" type="hidden" class="form-control"
				value="${sessionId}">
			<div class="form-group row">
				<label class="col-sm-2 control-label" >name</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" value="<%=name %>"
						placeholder="name">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >title</label>
				<div class="col-sm-5">

					<input name="subject" type="text" class="form-control"
						placeholder="subject">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >text</label>
				<div class="col-sm-8">
					<textarea name="content" cols="50" rows="5" class="form-control"
						placeholder="content"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
				 <input type="submit" class="btn btn-secondary " value="save " style="background-color:#d9cce4">				
					 <input type="reset" class="btn btn-secondary " value="reset " style="background-color:#f1e0e2">
				</div>
			</div>
		</form>
		<hr>
	</div>

</body>
</html>



