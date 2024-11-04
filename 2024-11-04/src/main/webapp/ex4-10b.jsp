<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>session对象应用</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    String cName = request.getParameter("course");
    ArrayList cList = (ArrayList) session.getAttribute("cList");
    if (cList == null) {
        cList = new ArrayList();
        cList.add(cName);
        session.setAttribute("cList", cList);
        response.sendRedirect("ex4-10c.jsp");
    } else if (!cList.contains(cName)) {
        cList.add(cName);
        session.setAttribute("cList", cList);
        response.sendRedirect("ex4-10c.jsp");
    } else {
        out.println("该课程已经选过，请重新选择！");
%>
<br><br>&nbsp;&nbsp;
<a href="ex4-09a.jsp">返回</a>重新选课
<% } %>
</body>
</html>
