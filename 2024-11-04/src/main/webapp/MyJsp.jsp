<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/11/4
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>请输入姓名进入第一次百货</h2>
<h3>输入你想买入的商品</h3>
<form action="MyJsp2.jsp" method="post">
    <%
        String username=request.getParameter("username");
       session.setAttribute("username", username);
    %>
    <input type="text" name="goods"/>
    <button type="submit">提交</button>
    <button type="reset">重置</button>
</form>
</body>
</html>
