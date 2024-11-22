<%@ page import="mapper.CourseMapper" %>
<%@ page import="entity.Course" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>课程查询结果</title>
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
<h2 class="header">课程查询结果</h2>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    String name = request.getParameter("name");
    if (name == null || name.trim().isEmpty()) {
        out.println("<p>请输入课程类型名称。</p>");
    } else {
        try {
            CourseMapper courseMapper = new CourseMapper();
            List<Course> courseList = courseMapper.getAllByName(name);

            if (courseList.isEmpty()) {
                out.println("<p>没有找到相关课程。</p>");
            } else {
%>
<table border="1">
    <tr>
        <th>序号</th>
        <th>课程编号</th>
        <th>课程名称</th>
        <th>总学时</th>
        <th>学分</th>
        <th>教师工号</th>
    </tr>
    <%
        int index = 1;
        for (Course course : courseList) {
    %>
    <tr>
        <td><%= index++ %>
        </td>
        <td><%= course.getCno() %>
        </td>
        <td><%= course.getCname() %>
        </td>
        <td><%= course.getChour() %>
        </td>
        <td><%= course.getCcredit() %>
        </td>
        <td><%= course.getTno() %>
        </td>
    </tr>
    <%
        }
    %>
</table>
<%
            }
        } catch (Exception e) {
            out.println("<p>查询出错：" + e.getMessage() + "</p>");
        }
    }
%>
</body>
</html>