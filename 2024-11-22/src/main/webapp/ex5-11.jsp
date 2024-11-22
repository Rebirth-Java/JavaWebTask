<%@ page import="entity.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="service.impl.CourseService" %>
<%@ page import="mapper.CourseMapper" %><%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-22
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类统计查询</title>
    <style type="text/css">
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: center;
            border: 1px solid #ddd;
        }
        tr:nth-child(even){background-color: #f2f2f2;}
        tr:hover {background-color: #ddd;}
        th {
            background-color: cornflowerblue;
            color: white;
        }
        .header {
            font-size: 2em;
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<h1 class="header">JSP中调用MySQL数据库的存储过程</h1>
<table>
    <thead>
    <tr>
        <th>开设专业</th>
        <th>总学时</th>
        <th>总学分</th>
    </tr>
    </thead>
    <tbody>
    <%
        CourseMapper courseMapper = new CourseMapper();
        List<Course> courseList = courseMapper.getAllCourses();
        for (Course course : courseList) {
    %>
    <tr>
        <td><%= course.getCname() %></td>
        <td><%= course.getChour() %></td>
        <td><%= course.getCcredit() %></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>