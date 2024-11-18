<%@ page import="service.impl.CourseService" %><%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-17
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String cno = request.getParameter("cno");
  CourseService courseService = new CourseService();
  boolean flag = courseService.delete(cno);
  if (flag){
      out.print("记录删除成功");
  }
  else{
      out.print("记录删除失败");
  }
%>
</body>
</html>
