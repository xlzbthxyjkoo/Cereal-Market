<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="mvc.model.BoardDTO"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
	List boardList = (List) request.getAttribute("boardlist");
	int total_record = ((Integer) request.getAttribute("total_record")).intValue();
	int pageNum = ((Integer) request.getAttribute("pageNum")).intValue();
	int total_page = ((Integer) request.getAttribute("total_page")).intValue();
%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Signika+Negative&display=swap" rel="stylesheet">
<title>Board</title>
<script type="text/javascript">
	function checkForm() {	
		if (${sessionId==null}) {
			alert("로그인 해주세요.");
			return false;
		}
		location.href = "./BoardWriteForm.do?id=<%=sessionId%>"
	}
</script>
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
			<br>
			<h1 class="display-3">Q&A BOARD</h1>
		</div>
	</div>
	<div class="container" >
		<form action="<c:url value="./BoardListAction.do"/>" method="post">
			<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>
						<th>num</th>
						<th>title</th>
						<th>date</th>
						<th>	</th>
						<th>views</th>
						<th>name</th>
					</tr>
					<%
						for (int j = 0; j < boardList.size(); j++) {
							BoardDTO notice = (BoardDTO) boardList.get(j);
					%>
					<tr>
						<td><%=notice.getNum()%></td>
						<td><a href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>" style="color:black"><%=notice.getSubject()%></a></td>
						<td><%=notice.getRegist_day()%></td>
						<td><%if(notice.getHit()>=8){%> <img src="./image/hot-deal.png" alt="" title="" style="width:30px; height:30px;"> <%} %></td>
						<td><%=notice.getHit()%></td>
						<td><%=notice.getName()%></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div align="center">
				<c:set var="pageNum" value="<%=pageNum%>" />
				<c:forEach var="i" begin="1" end="<%=total_page%>">
					<a href="<c:url value="./BoardListAction.do?pageNum=${i}" /> ">
						<c:choose>
							<c:when test="${pageNum==i}">
								<font color='4C5317'><b> [${i}]</b></font>
							</c:when>
							<c:otherwise>
								<font color='4C5317'> [${i}]</font>
							</c:otherwise>
						</c:choose>
					</a>
				</c:forEach>
			</div>
			<div align="left">
				<table>
					<tr>
						<td width="100%" align="left">&nbsp;&nbsp; 
						<select name="items" class="txt">
								<option value="subject">by title</option>
								<option value="content">by text</option>
								<option value="name">by name</option>
						</select> 
						<input name="text" type="text" /> 
						<input type="submit" id="btnAdd" class="btn btn-secondary " value="search " style="background-color:#d9cce4"/>
						</td>
						<td width="100%" align="right">
							<a href="#" onclick="checkForm(); return false;" class="btn btn-secondary" style="background-color:#d9cce4">write</a>
						</td>
					</tr>
				</table>
			</div>
		</form>
		<hr>
	</div>
</body>
</html>