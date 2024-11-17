<%@ page import="entity.Course" %>
<%@ page import="service.impl.CourseService" %><%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-11
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
  CourseService courseService = new CourseService();
  Course course = new Course();
  course.setCno(request.getParameter("cno"));
  course.setCname(request.getParameter("cname"));
  course.setCterm(Integer.parseInt(request.getParameter("cterm")));
  course.setCmajor(request.getParameter("cmajor"));
  course.setChour(Integer.parseInt(request.getParameter("chour")));
  course.setCcredit(Integer.parseInt(request.getParameter("ccredit")));
  course.setTno(request.getParameter("tno"));
  course.setCintro(request.getParameter("cintro"));
  boolean flag =   courseService.insert(course);
  if (flag){
    out.print("记录添加成功");
  }
  else{
    out.print("添加失败");
  }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
