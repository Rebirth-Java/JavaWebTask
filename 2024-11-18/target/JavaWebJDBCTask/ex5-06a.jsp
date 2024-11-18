<%@ page import="service.impl.CourseService" %>
<%@ page import="entity.Course" %><%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-17
  Time: 21:16
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
String credit = request.getParameter("credit");
String chour = request.getParameter("chour");
  CourseService courseService = new CourseService();
  Course course = new Course(cno, Integer.parseInt(chour), Integer.parseInt(credit));
  boolean flag = courseService.update(course);
  if (flag){
      out.print("记录修改成功");
  }
  else{
      out.print("记录修改失败");
  }
%>
</body>
</html>
