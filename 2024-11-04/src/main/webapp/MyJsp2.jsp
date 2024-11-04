<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/11/4
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username =session.getAttribute("username").toString();
    String goods = request.getParameter("goods");
    out.print("你的姓名是"+username);
    out.print("你购买的商品是"+goods);
%>
