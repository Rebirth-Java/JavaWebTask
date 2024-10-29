<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-10-28
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="background-color: palevioletred">
<div style="width: 600px; margin:0px auto">
    <p>我的注册界面</p>
    <form action="registerTO.jsp" method="post">
    姓名:<input type="text" name="studentName"><br/>
    密码:<input type="text" name="studentPwd" style="margin-top: 20px"><br/>
    性别:<input type="radio" name="sex" checked value="先生" style="margin-top: 20px">男
    <input type="radio" name="sex" value="女士" style="margin-top: 20px">女<br/>
    本学期所开课程： <input type="checkbox" value="数据库" name="course">数据库
    <input type="checkbox" value="Javaweb项目开发" name="course">Javaweb项目开发
    <input type="checkbox" value="c语言程序设计" name="course">c语言程序设计
    <input type="checkbox" value="网页设计" name="course">网页设计<br/>
    <select name="college" style="margin-top: 20px">
        <option value="管理学院">管理学院</option>
        <option value="信工学院">信工学院</option>
        <option value="法学院">法学院</option>
        <option value="医学院">医学院</option>
    </select><br/>
        <input type="submit" value="提交" style="margin-top: 20px;width: 144px;">
        <input type="reset" value="重置" style="margin-top: 20px">
    </form>
</div>
</body>
</html>
