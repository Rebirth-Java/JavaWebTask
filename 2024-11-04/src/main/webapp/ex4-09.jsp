<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/11/4
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    if (username != null && !username.isEmpty()) {
        session.setAttribute("user", username);
        response.sendRedirect("ex4-09a.jsp"); // 重定向到 ex4-10b.jsp
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>用户登录</h2>
<form action="ex4-09.jsp" method="post">
    用户名:<input type="text" name="username"/>
    密码:<input type="password" name="password"/>
    <button type="submit">提交</button>
    <button type="reset">重置</button>
</form>
</body>
</html>
