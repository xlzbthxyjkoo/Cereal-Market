<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<!-- 화면 변경 크기와 navbar의 배경색, 글자색 변경 -->
<!-- 화면 위쪽에 고정하기 위해 fixed-top 클래스 추가 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  <!-- navbar-brand의 content 변경 -->

  <a class="navbar-brand" href="<c:url value="/main.jsp"/>"><img src="<c:url value='/image/cerealicon2.png' />"  style="width:10%; height:10%;"/></a>

  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
  
  <div class="collapse navbar-collapse justify-content-start" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
	<c:choose>
		<c:when test="${empty sessionId}">
      
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>" style="color:black; font-family: 'Nunito', sans-serif;">LOGIN</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/member/addMember.jsp"/>" style="color:black; font-family: 'Nunito', sans-serif;">JOIN</a>
      </li>
      
      </c:when>
      <c:otherwise>
      <li class="nav-item pull-right">
        <a class="nav-link pull-right" href="<c:url value="/member/updateMember.jsp"/> " style="color:black; font-family: 'Nunito', sans-serif;">EDIT PROFILE</a>
      </li>
      <li class="nav-item pull-right">
        <a class="nav-link pull-right" href="<c:url value="/member/logoutMember.jsp"/>" style="color:black; font-family: 'Nunito', sans-serif;">LOGOUT</a>
      </li>
      
     <li class="nav-item">
         <a class="nav-link" href="<c:url value="/cart.jsp"/>" style="color:black; font-family: 'Nunito', sans-serif;">BAG</a>
      </li>
      
     <li class="nav-item">
         <a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>" style="color:black; font-family: 'Nunito', sans-serif;">BOARD</a>
      </li>
      
      </c:otherwise>
      </c:choose>
      
      
    </ul>
  </div>
  
</nav>