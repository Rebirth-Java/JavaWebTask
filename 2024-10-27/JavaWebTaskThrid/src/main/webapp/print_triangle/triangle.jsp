

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 页面指令，指定内容类型为 text/html，字符编码为 UTF-8，使用 Java 语言 -->
<%
    // 获取从表单提交过来的数字参数，并转换为整数
    String numberStr = request.getParameter("number");
    Integer number = null;

    if (numberStr == null || numberStr.trim().isEmpty()) {
        // 如果参数为空或仅包含空白字符，重定向到输入页面
        response.sendRedirect("input.jsp");
    } else {
        try {
            number = Integer.parseInt(numberStr);
            // 使用 <pre> 标签来保持输出的格式
            out.println("<pre>");

            // 外层循环控制行数
            for (Integer i = 1; i <= number; i++) {
                // 内层循环控制每行中的星号数量
                for (Integer j = 1; j <= i; j++) {
                    // 输出一个星号
                    out.print("*");
                }
                // 换行
                out.println();
            }

            // 结束 <pre> 标签
            out.println("</pre>");
        } catch (NumberFormatException e) {
            // 处理非数字输入
            out.println("<p>无效的数值，请输入一个整数。</p>");
        }
    }
%>

<html>
<head>
    <title>Title</title>
    <!-- 设置页面的标题 -->
</head>
<body>
<!-- 页面主体内容 -->
</body>
</html>