
<!-- JSP 文件的注释部分，记录了文件的创建信息和编辑器设置 -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 页面指令，指定内容类型为 text/html，字符编码为 UTF-8，使用 Java 语言 -->

<html>
<!-- 定义 HTML 文档的根元素 -->
<head>
    <title>输入数字</title>
    <!-- 设置页面的标题为“输入数字” -->
</head>
<body>
<h2>请输入一个数字以生成直角三角形:</h2>
<!-- 显示一个二级标题，提示用户输入一个数字 -->

<form action="triangle.jsp" method="post">
    <!-- 定义一个表单，表单的数据将通过 POST 方法提交到 triangle.jsp 页面 -->
    <label for="number">数字:</label>
    <!-- 定义一个标签，与输入框关联，文本为“数字” -->
    <input type="number" id="number" name="number" required>
    <!-- 定义一个数字输入框，要求用户必须输入一个数字 -->
    <button type="submit">提交</button>
    <!-- 定义一个提交按钮，用户点击后会提交表单 -->
</form>
</body>
</html>