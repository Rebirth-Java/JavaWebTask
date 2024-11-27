package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Cookie")
public class CookieServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int loginCount = getLoginCount(request);

        if (loginCount == 0) {
            response.getWriter().println("This is the first time you have logged on.");
        } else {
            response.getWriter().println("The number of times you have logged on is:" + loginCount);
        }

        setLoginCountCookie(response, ++loginCount);
    }

    private int getLoginCount(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("loginCount".equals(cookie.getName())) {
                    return Integer.parseInt(cookie.getValue());
                }
            }
        }
        return 0; // First visit
    }

    private void setLoginCountCookie(HttpServletResponse response, int count) {
        Cookie loginCountCookie = new Cookie("loginCount", String.valueOf(count));
        loginCountCookie.setMaxAge(60 * 60 * 24); // One day in seconds
        response.addCookie(loginCountCookie);
    }
}