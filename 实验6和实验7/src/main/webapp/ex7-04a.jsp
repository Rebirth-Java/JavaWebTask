<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-27
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mymodel.user.User, com.mymodel.user.UserOper" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  // 获取表单数据
  String userName = request.getParameter("userName");
  String password = request.getParameter("passWord");

  // 创建User对象并设置属性
  User user = new User(userName,password);

  // 使用UserOper进行登录验证
  UserOper userOper = new UserOper();
  boolean result = userOper.login(user);
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
</body>
</html>
