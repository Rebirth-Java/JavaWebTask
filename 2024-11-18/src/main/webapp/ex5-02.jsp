<%@ page import="dao.BaseDao" %><%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-11
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    BaseDao baseDao = new BaseDao();
    boolean flag = baseDao.getConnection();
    if (flag){
        out.print("通过专用的JDBC驱动连接Mysql数据库!");
    }
    else{
        out.print("连接失败");
    }
%>
</body>
</html>
