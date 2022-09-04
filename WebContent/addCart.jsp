<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.cereal"%>
<%@ page import="dao.cerealRepository"%>
<%@ page errorPage="ErrorPage.jsp"%>

<%
   String id = request.getParameter("id");
   if (id == null || id.trim().equals("")) {
      response.sendRedirect("cheeriosview.jsp");
      return;
   }

   cerealRepository dao = cerealRepository.getInstance();

   cereal cereal = dao.getcerealById(id);
   if (cereal == null) {
      response.sendRedirect("ErrorPage.jsp");
   }

   ArrayList<cereal> goodsList = dao.getAllcereal();
   cereal goods = new cereal();
   for (int i = 0; i < goodsList.size(); i++) {
      goods = goodsList.get(i);
      if (goods.getId().equals(id)) {          
         break;
      }
   }
   
   ArrayList<cereal> list = (ArrayList<cereal>) session.getAttribute("cartlist");
   if (list == null) { 
      list = new ArrayList<cereal>();
      session.setAttribute("cartlist", list);
   }

   int cnt = 0;
   cereal goodsQnt = new cereal();
   for (int i = 0; i < list.size(); i++) {
      goodsQnt = list.get(i);
      if (goodsQnt.getId().equals(id)) {
         cnt++;
         int orderQuantity = goodsQnt.getQuantity() + 1;
         goodsQnt.setQuantity(orderQuantity);
      }
   }

   if (cnt == 0) { 
      goods.setQuantity(1);
      list.add(goods);
   }

   response.sendRedirect("cart.jsp?id=" + id);
%>