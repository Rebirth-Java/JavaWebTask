<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-04
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String username = request.getParameter("username");
application.setAttribute("user", username);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="session.jsp" method="post">
  <table>
    <tr>
      <td>商品名称</td>
      <td>价格/元</td>
      <td>库存量</td>
      <td>购买数量</td>
    </tr>
    <tr>
      <td>计算机网络</td>
      <td>48.0</td>
      <td>30</td>
      <td><input type="number" name="computer" value="0"></td>
    </tr>
    <tr>
      <td>JSP程序设计</td>
      <td>58.0</td>
      <td>25</td>
      <td><input type="number" name="jsp" value="0"></td>
    </tr>
    <tr>
      <td>C++程序设计</td>
      <td>45.0</td>
      <td>40</td>
      <td><input type="number" name="c++" value="0"></td>
    </tr>
  </table><br>
  <input type="submit" value="提交">
  <input type="reset" value="重置">
</form>

</body>
</html>
