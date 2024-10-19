<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  // 获取用户输入的用户名和密码
  String username = request.getParameter("username");
  String password = request.getParameter("password");

  // 验证用户名和密码是否正确
  if ("admin".equals(username) && "abc123".equals(password)) {
    // 用户名和密码正确，创建会话并存储用户名
    HttpSession httpSession = request.getSession();
    httpSession.setAttribute("username", username);
    //初始化登录人数
    int userCount=0;
    httpSession.setAttribute("userCount",userCount);
    // 转向主页面
    response.sendRedirect("ex3-9-main.jsp");
  } else {
    // 用户名或密码错误，重新跳转回登录页面
    response.sendRedirect("ex3-9.jsp?error=1");
  }
%>