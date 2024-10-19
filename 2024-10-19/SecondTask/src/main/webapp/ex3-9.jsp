<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
</head>
<body>
<h2>登录页面</h2>
<form action="ex3-9-check.jsp" method="post">
    <label for="username">用户名:</label>
    <input type="text" id="username" name="username"><br><br>
    <label for="password">密码:</label>
    <input type="password" id="password" name="password"><br><br>
    <input type="submit" value="登录">
</form>
<%
    String error = request.getParameter("error");
    if ("1".equals(error)) {
       out.write("<p style='color:red;'>用户名或密码错误，请重新输入。</p>");
    }
%>
</body>
</html>