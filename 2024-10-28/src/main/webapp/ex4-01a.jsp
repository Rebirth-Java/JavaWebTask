<%--
  Created by IntelliJ IDEA.
  User: 2024022028曾钢
  Date: 2024-10-28
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    String studentNo = request.getParameter("StudentNo");
    String studentName = request.getParameter("StudentName");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>客户端提交的信息如下</h1>
<p>学号: <%= studentNo %></p>
<p>姓名: <%= studentName %></p>
</body>
</html>
