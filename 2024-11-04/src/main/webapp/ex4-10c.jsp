<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");

    String userName = (String) session.getAttribute("user");
    String strTemp = userName + "同学,你选修的课程如下：";
%>
<html>
<head>
    <title>选修课程列表</title>
</head>
<body>
<h2><%= strTemp %></h2>
<%
    ArrayList<String> cList = (ArrayList<String>) session.getAttribute("cList");
    if (cList != null && !cList.isEmpty()) {
        for (String cName : cList) {
%>
<li><%= cName %></li>
<%
    }
} else {
%>
<p>暂无选修课程。</p>
<%
    }
%>
<br><br>&nbsp;&nbsp;&nbsp;
<a href="ex4-09a.jsp">返回</a>继续选课
</body>
</html>