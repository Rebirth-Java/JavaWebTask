<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="mapper.CourseMapper" %>
<%@ page import="entity.Course" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>JSP中调用带参数的存储过程</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        form {
            align-items: center;
            gap: 10px;
        }

        label {
            width: 100px;
            text-align: right;
        }

        input[type="text"] {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            padding: 5px 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .result {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h2>JSP中调用带参数的存储过程</h2>

<form action="ex5-12.jsp" method="post">
    <label for="name">请输入专业名称:</label>
    <input type="text" name="name" id="name">
    <button type="submit">提交</button>
</form>

<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    String name = request.getParameter("name");
    if (name != null && !name.isEmpty()) {
        CourseMapper courseMapper = new CourseMapper();
        Course course = courseMapper.getAllCoursesByMajor(name);
        out.print("<div class='result'>");
        out.print("专业: " + course.getCmajor() + "<br>");
        out.print("总学时: " + course.getChour() + "<br>");
        out.print("总学分: " + course.getCcredit() + "<br>");
        out.print("</div>");
    }
%>
</body>
</html>