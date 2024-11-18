<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-11
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>添加课程</title>
</head>
<body>
<h2>添加课程信息</h2>
<form action="ex5-03a.jsp" method="post">
  课程编号: <input type="text" name="cno" required><br>
  课程名称: <input type="text" name="cname" required><br>
  学期: <input type="number" name="cterm" required><br>
  专业: <input type="text" name="cmajor" required><br>
  学时: <input type="number" name="chour" required><br>
  学分: <input type="number" name="ccredit" required><br>
  教师编号: <input type="text" name="tno" required><br>
  课程简介: <textarea name="cintro" rows="½" cols="30" required></textarea><br>
  <input type="submit" value="添加">
</form>
</body>
</html>