<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = (String) session.getAttribute("user");
    if (username == null || username.isEmpty()) {
        response.sendRedirect("ex4-09.jsp"); // 如果没有用户名，重定向到登录页面
    } else {
        out.print("欢迎您 " + username + " 同学");
    }
%>
<html>
<head>
    <title>选择课程</title>
</head>
<body>
<p>请选择一门课程</p>
<form action="ex4-10b.jsp" method="post">
    <input type="radio" value="Jsp程序设计" name="course">Jsp程序设计
    <input type="radio" value="数据库原理" name="course">数据库原理
    <input type="radio" value="数据结构" name="course">数据结构
    <input type="radio" value="电子商务概论" name="course">电子商务概论
    <button type="submit">提交</button>
    <button type="reset">重置</button>
</form>
</body>
</html>