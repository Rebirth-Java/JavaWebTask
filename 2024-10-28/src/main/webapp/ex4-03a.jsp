<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-10-28
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    String studentName = request.getParameter("studentName");
    String studentPwd = request.getParameter("studentPwd");
    String sex = request.getParameter("sex");
    String aClass = request.getParameter("class");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>个人信息如下</h1>
<p>姓名: <%= studentName %>
</p>
<p>密码: <%= studentPwd %>
</p>
<p>性别: <%= sex %>
</p>
<p>班级: <%= aClass %>
</p>


</body>
</html>
