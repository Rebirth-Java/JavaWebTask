<%--
  Created by IntelliJ IDEA.
  User: 2024022028曾钢
  Date: 2024-10-28
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Integer num = Integer.parseInt(request.getParameter("num"));
  Integer sum=0;
  for (Integer i = 1; i <=num; i++) {
    sum+=i;
  }
  out.print(sum);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>求和的结果是</h1>
<p>1-10的累加和是: <%= sum %></p>

</body>
</html>
