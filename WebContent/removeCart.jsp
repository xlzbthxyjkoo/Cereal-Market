<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.cereal"%>
<%@ page import="dao.cerealRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("cheeriosproduct.jsp");
		return;
	}

	cerealRepository dao = cerealRepository.getInstance();
	
	cereal cereal = dao.getcerealById(id);
	if (cereal == null) {
		response.sendRedirect("ErrorPage.jsp");
	}

	ArrayList<cereal> cartList = (ArrayList<cereal>) session.getAttribute("cartlist");
	cereal goodsQnt = new cereal();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
