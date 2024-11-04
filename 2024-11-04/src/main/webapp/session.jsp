<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-04
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String username = application.getAttribute("user").toString();
out.println("你好"+username+"<br>");
out.println("您购买的商品如下<br>");
  int computer = Integer.parseInt(request.getParameter("computer"));
  int jsp = Integer.parseInt(request.getParameter("jsp"));
  int cPlusPlus = Integer.parseInt(request.getParameter("c++"));
double totalPrice = (computer * 48.0) + (jsp * 58.0) + (cPlusPlus * 45.0);
  if (computer > 0 || jsp > 0 || cPlusPlus > 0) {
    if (computer > 0) {
      out.println("计算机网络: " + computer + "本<br>");
    }
    if (jsp > 0) {
      out.println("JSP程序设计: " + jsp + "本<br>");
    }
    if (cPlusPlus > 0) {
      out.println("C++程序设计: " + cPlusPlus + "本<br>");
    }
    out.println(totalPrice+"元");
  } else {
    out.println("您未购买任何商品。<br>");
  }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
