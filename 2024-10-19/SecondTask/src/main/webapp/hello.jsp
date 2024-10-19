<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-10-19
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>以下内容是包含的动态文件he11o.jsp的内容：</h3>
<% String mame=request.getParameter("username");
out.print("恭喜,"+mame+"登录成功!");
%>

</body>
</html>
