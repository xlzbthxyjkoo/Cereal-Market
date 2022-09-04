<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="mvc.model.BoardDTO"%>

<%
	BoardDTO notice = (BoardDTO) request.getAttribute("board");
	int num = ((Integer) request.getAttribute("num")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
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
<body class ="img" style="font-family: 'Gowun Dodum', sans-serif;">
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Q&A BOARD</h1>
		</div>
	</div>

	<div class="container">
		<form name="newUpdate"
			action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2 control-label" >name</label>
				<div class="col-sm-3">
					<input name="name" class="form-control"	value=" <%=notice.getName()%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >title</label>
				<div class="col-sm-5">
					<input name="subject" class="form-control"	value=" <%=notice.getSubject()%>" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >text</label>
				<div class="col-sm-8" style="word-break: break-all;">
					<textarea name="content" class="form-control" cols="50" rows="5"> <%=notice.getContent()%></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<c:set var="userId" value="<%=notice.getId()%>" />
					<c:if test='${sessionId eq "chloe01" }'> <!-- 관리자모드/삭제 가능-->
						<p>
							<a	href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"	class="btn btn-secondary" style="background-color:#d9cce4"> delete</a>
							<input type="submit" class="btn btn-secondary" value="edit " style="background-color:#d9cce4"> 
							<a href="./BoardListAction.do?pageNum=<%=nowpage%>"		class="btn btn-secondary" style="background-color:#d9cce4"> list</a>
					</c:if>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<c:set var="userId" value="<%=notice.getId()%>" /> <!-- 일반 사용자 모드-->
					<c:if test='${sessionId ne "chloe01" }'>
						<p> 
						<a href="./BoardListAction.do?pageNum=<%=nowpage%>"		class="btn btn-secondary" style="background-color:#d9cce4"> list</a>
					</c:if>
				</div>
			</div>
			
		</form>
		<hr>
	</div>
</body>
</html>


