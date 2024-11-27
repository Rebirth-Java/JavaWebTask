<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-27
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.mymodel.user.Login" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  // 获取表单数据
  String userName = request.getParameter("userName");
  String password = request.getParameter("passWord");

  // 创建Login对象并设置属性
  Login login = new Login(userName,password);

  // 调用check方法判断
  boolean result = login.check();

  // 输出结果
%>
<html>
<head>
  <title>登录结果</title>
</head>
<body>
<h2>
  <% if (result) { %>
  登录成功！欢迎你，<%= userName %>。
  <% } else { %>
  登录失败，请检查用户名或密码。
  <% } %>
</h2>
<a href="ex7-03.jsp">返回登录页面</a>
</body>
</html>