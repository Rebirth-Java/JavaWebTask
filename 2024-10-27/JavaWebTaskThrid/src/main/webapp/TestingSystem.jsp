<%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-10-27
  Time: 0:20
  To change this template use File | Settings | File Templates.
--%>
<!-- 文件头部注释，说明文件创建工具、作者、日期和时间 -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 指定页面的内容类型为 HTML，并设置字符编码为 UTF-8，语言为 Java -->

<html>
<!-- HTML 文档的根元素 -->

<head>
    <!-- 包含文档的元数据（如标题、样式表链接等） -->
    <title>Title</title>
    <!-- 设置网页的标题 -->
</head>

<body>
<!-- 网页的主体内容部分 -->

<form action="check.jsp" method="post">
    <!-- 定义一个表单，提交方式为 POST，提交目标为 check.jsp 页面 -->

    请输入姓名：<input type="text" name="name" required><br>
    <!-- 输入框用于输入姓名，required 属性表示该字段不能为空 -->

    请选择班级：    <select name="class" required>
    <!-- 下拉选择框用于选择班级，required 属性表示必须选择一项 -->
    <option value="软件071">软件071</option>
    <!-- 下拉选项之一，值为 "软件071" -->
    <option value="软件072">软件072</option>
    <!-- 下拉选项之一，值为 "软件072" -->
    <option value="软件073">软件073</option>
    <!-- 下拉选项之一，值为 "软件073" -->
    <option value="软件074">软件074</option>
    <!-- 下拉选项之一，值为 "软件074" -->
    <option value="软件075">软件075</option>
    <!-- 下拉选项之一，值为 "软件075" -->
</select><br>
    <!-- 结束下拉选择框 -->

    在JSP中，可以获得用户表单提交的信息的内置对象是：<br>
    <!-- 提示文字，解释问题背景 -->
    <input type="radio" name="question1" value="response"> response对象<br>
    <!-- 单选按钮，名称为 question1，值为 "response" -->
    <input type="radio" name="question1" value="request"> request对象<br>
    <!-- 单选按钮，名称为 question1，值为 "request" -->
    <input type="radio" name="question1" value="session"> session对象<br>
    <!-- 单选按钮，名称为 question1，值为 "session" -->
    <input type="radio" name="question1" value="application"> application对象<br>
    <!-- 单选按钮，名称为 question1，值为 "application" -->

    在SQL语言中，为了实现数据的更新，使用的命令是：<br>
    <!-- 提示文字，解释问题背景 -->
    <input type="radio" name="question2" value="update"> update语句<br>
    <!-- 单选按钮，名称为 question2，值为 "update" -->
    <input type="radio" name="question2" value="insert"> insert语句<br>
    <!-- 单选按钮，名称为 question2，值为 "insert" -->
    <input type="radio" name="question2" value="select"> select语句<br>
    <!-- 单选按钮，名称为 question2，值为 "select" -->
    <input type="radio" name="question2" value="delete"> delete语句<br>
    <!-- 单选按钮，名称为 question2，值为 "delete" -->

    <input type="submit" value="提交答案">
    <!-- 提交按钮，点击后将表单数据提交到指定的 action URL -->
</form>
<!-- 结束表单定义 -->

</body>
<!-- 结束 body 部分 -->

</html>
<!-- 结束 html 文档 -->