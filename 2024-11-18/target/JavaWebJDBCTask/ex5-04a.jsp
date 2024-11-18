<%@ page import="service.impl.CourseService" %>
<%@ page import="entity.Course" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Jake
  Date: 2024-11-17
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String cno = request.getParameter("cno");
String chour = request.getParameter("chour");
String credit = request.getParameter("credit");
      Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
              Class.forName("com.mysql.cj.jdbc.Driver");

            // 建立数据库连接
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scms", "root", "123456");

            // 获取数据库连接



            // 创建SQL更新语句
            String sql = "UPDATE course SET ccredit = " + credit + ", chour = " + chour + " WHERE cno = '" + cno + "'";

            stmt = conn.createStatement();

            // 执行SQL更新语句
            int rowsAffected = stmt.executeUpdate(sql);

            if (rowsAffected > 0) {
                out.println("<p>记录修改成功！</p>");
            } else {
                out.println("<p>记录更新失败！</p>");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>数据库操作失败: " + e.getMessage() + "</p>");
        } finally {
            // 关闭资源
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

%>
</body>
</html>
