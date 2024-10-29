<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-10-28
  Time: 16:33
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
    String[] course = request.getParameterValues("course");
    String college = request.getParameter("college");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>注册信息如下</h1>
<p>姓名: <%= studentName %>
</p>
<p>密码: <%= studentPwd %>
</p>
<p>性别: <%= sex %>
</p>
<p>课程: <%

    if (course != null && course.length > 0) {
        for (String item : course) {
            out.println(item + "<br>");
        }
    } else {
        out.println("您没有选择任何课程。");
    }
%>

</p>
<p>学院: <%= college %>
</p>
</body>
</html>
