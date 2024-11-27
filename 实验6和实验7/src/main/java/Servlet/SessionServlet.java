    package Servlet;

    import javax.servlet.ServletException;
    import javax.servlet.annotation.WebServlet;
    import javax.servlet.http.HttpServlet;
    import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;
    import javax.servlet.http.HttpSession;
    import java.io.IOException;
    import java.text.SimpleDateFormat;
    import java.util.Date;

    @WebServlet("/Session")
    public class SessionServlet extends HttpServlet {

        private static final long serialVersionUID = 1L;

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           request.setCharacterEncoding("UTF-8");
           response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession(true); // true to create if not exists

            // Increment the visit counter
            Integer visits = (Integer) session.getAttribute("visits");
            if (visits == null) {
                visits = 1;
            } else {
                visits++;
            }
            session.setAttribute("visits", visits);

            // Get session information
            boolean isNewlyCreated = session.isNew();
            String sessionId = session.getId();
            long creationTime = session.getCreationTime();
            long lastAccessedTime = session.getLastAccessedTime();

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // Display session information
            response.setContentType("text/html");
            response.getWriter().append("<h1>Servlet中使用Session实例</h1>")
                    .append("<p>您访问本站的次数为：" + visits + "次.</p>")
                    .append("<p>点击<a href='" + request.getContextPath() + "/Session'>这里</a> 更新您的Session信息</p>")
                    .append("<h3>请求信息:</h3>")
                    .append("<ul>")
                    .append("<li>请求Session Id号: ").append(sessionId).append("</li>")
                    .append("<li>是否使用Cookie: ").append(isNewlyCreated ? "true" : "false").append("</li>")
                    .append("<li>是否从表单提交: false</li>")
                    .append("</ul>")
                    .append("<h3>Session信息:</h3>")
                    .append("<ul>")
                    .append("<li>是否首次创建: ").append(isNewlyCreated ? "true" : "false").append("</li>")
                    .append("<li>Session ID号: ").append(sessionId).append("</li>")
                    .append("<li>创建时间: ").append(sdf.format(new Date(creationTime))).append("</li>")
                    .append("<li>上次访问时间: ").append(sdf.format(new Date(lastAccessedTime))).append("</li>")
                    .append("</ul>");
        }
    }