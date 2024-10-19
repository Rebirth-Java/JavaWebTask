<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.FileInputStream" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>主页面</title>
</head>
<body>
<h2>欢迎来到主页面</h2>
<%
    // 检查会话中的用户名属性
    String username = (String) session.getAttribute("username");
    if (username == null) {
        // 用户未登录，重定向到登录页面
        response.sendRedirect("ex3-9.jsp");
    } else {
        // 显示欢迎信息
        out.write("<p>欢迎您，" + username + "！</p>");

        // 显示当前用户是第几个登录的用户
        Integer userNumber = (Integer) session.getAttribute("userCount");
        //首次登录设置为1人数
        if (userNumber == 0 || userNumber == null) {
            userNumber = 1;
        }
        //否则就加一
        else {
            userNumber++;
        }
        session.setAttribute("userCount", userNumber);
        out.write("<p>您是第 " + userNumber + " 个登录的用户。</p>");

        // 显示系统当前日期
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date currentDate = new Date();
        out.write("<p>当前时间：" + dateFormat.format(currentDate) + "</p>");
        // 包含文本文件 stat.txt
        out.write("<h3>统计信息：</h3>");
    }

%>
<jsp:include page="stat.txt"/>
<h3>动态内容：</h3>
<jsp:include page="hello.jsp">
    <jsp:param name="username" value="<%= username %>"/>
</jsp:include>

</body>
</html>