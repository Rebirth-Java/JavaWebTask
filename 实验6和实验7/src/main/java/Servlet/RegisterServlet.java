package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置响应内容类型和字符编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("utf-8");

        // 创建 PrintWriter 对象
        PrintWriter pw = response.getWriter();

        // 开始写入 HTML 内容
        pw.println("<html><body>");

        // 标题
        pw.println("<h1>All Parameters From Request</h1>");

        // 表头
        pw.println("<table border=\"1\">");
        pw.println("<tr><th>Parameter Name</th><th>Parameter Value</th></tr>");

        // 遍历所有参数
        Enumeration<String> parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            String[] paramValues = request.getParameterValues(paramName);

            for (String paramValue : paramValues) {
                // 每个参数值一行
                pw.println("<tr><td>" + paramName + "</td><td>" + paramValue + "</td></tr>");
            }
        }

        // 结束表格和 HTML 文档
        pw.println("</table>");
        pw.println("</body></html>");

        // 关闭 PrintWriter
        pw.close();
    }
}
