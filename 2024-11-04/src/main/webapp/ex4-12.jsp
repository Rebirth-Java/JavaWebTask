<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-04
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    // 设置字符编码
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");

    // 获取应用计数器
    Integer counter = (Integer) application.getAttribute("counter");

    // 如果计数器不存在，则初始化为1
    if (counter == null) {
        counter = 1;
    } else {
        // 计数器加1
        counter++;
    }

    // 将更新后的计数器存回 application 对象
    application.setAttribute("counter", counter);
%>
<html>
<head>
    <title>站点计数器</title>
</head>
<body>
<h2>欢迎访问本站点</h2>
<p>当前网页访问量: <%= counter %> </p>
</body>
</html>
