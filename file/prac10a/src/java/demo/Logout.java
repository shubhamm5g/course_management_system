package demo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Logout extends HttpServlet {
   
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        javax.servlet.http.HttpSession hs = request.getSession();
if(hs != null)
    {
hs.invalidate();
}
out.println("<body style='background-color:#419197'>");
out.println("<h3>Thankyou...visit again</h3>");
out.println("<h1>Click here for <a href='index.html'>Login Page</a></h1>");

}
}
