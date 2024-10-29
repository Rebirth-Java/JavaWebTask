<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-10-28
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>请填写个人信息</h1>
<form action="ex4-03a.jsp" method="post">
  姓名:<input type="text" name="studentName"><br/>
  密码:<input type="text" name="studentPwd" style="margin-top: 20px"><br/>
  性别:<input type="radio" name="sex" checked value="先生" style="margin-top: 20px">男
  <input type="radio" name="sex" value="女士" style="margin-top: 20px">女<br/>
  班级:<select  name="class" style="margin-top: 20px"><br/>
  <option value="信管2011级1班">信管11-1</option>
  <option value="信管2011级2班">信管11-2</option>
  <option value="信管2011级3班">信管11-3</option>
</select>
  <input type="submit" value="提交" style="margin-top: 20px">
</form>
</body>
</html>
