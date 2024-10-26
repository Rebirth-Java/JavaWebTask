<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 设置页面内容类型为 HTML，并指定字符编码为 UTF-8 -->

<%
  // 设置请求编码为 UTF-8，以确保中文字符不会乱码
  request.setCharacterEncoding("UTF-8");

  // 从请求中获取 "name" 参数值
  String name = request.getParameter("name");

  // 从请求中获取 "class" 参数值
  String classValue = request.getParameter("class");

  // 从请求中获取 "question1" 参数值
  String question1 = request.getParameter("question1");

  // 从请求中获取 "question2" 参数值
  String question2 = request.getParameter("question2");

  // 检查所有参数是否为 null
  if (name == null || classValue == null || question1 == null || question2 == null) {
    // 如果有任何一个参数为 null，则重定向到答题页面
    response.sendRedirect("TestingSystem.jsp");
  } else {
    // 初始化总分为 0
    int totalScore = 0;

    // 判断 question1 的答案是否正确
    boolean isQuestion1Correct = "request".equals(question1);

    // 如果 question1 的答案正确，增加总分
    if (isQuestion1Correct) {
      totalScore += 1;
    } else {
      totalScore += 0; // 答案错误，总分不变
    }

    // 判断 question2 的答案是否正确
    boolean isQuestion2Correct = "update".equals(question2);

    // 如果 question2 的答案正确，增加总分
    if (isQuestion2Correct) {
      totalScore += 1;
    } else {
      totalScore += 0; // 答案错误，总分不变
    }

    // 输出结果标题
    out.println("<h3>您的答案已提交</h3>");

    // 输出姓名信息
    out.println("<p>姓名: " + name + "</p>");

    // 输出班级信息
    out.println("<p>班级: " + classValue + "</p>");

    // 输出总分信息
    out.println("<p>总分: " + totalScore + "</p>");
  }
%>