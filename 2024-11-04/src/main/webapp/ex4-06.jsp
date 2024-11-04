<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>自动刷新显示时间</title>
</head>
<body>
<h2>当前系统时间为:</h2>
<%
    // 设置每隔1秒刷新一次
    response.setIntHeader("Refresh", 1);

    // 获取当前时间
    Date now = new Date();

    // 定义时间格式
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    // 格式化时间并输出
    String formattedDate = sdf.format(now);
    out.println("<h3>" + formattedDate + "</h3>");
%>
</body>
</html>