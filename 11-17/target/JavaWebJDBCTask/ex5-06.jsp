<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-17
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <h1>请输入要修改的课程信息</h1>
    <form action="ex5-06a.jsp" method="post">
        课程号:<input type="text" name="cno" placeholder="请输入课程编号"><br>
        学时:<input type="text" name="chour" placeholder="请输入课程学时"><br>
        学分:<input type="text" name="credit" placeholder="请输入课程学分"><br>
        <input type="submit" value="提交">
        <input type="reset" value="重置">
    </form>
</div>
</body>
</html>
