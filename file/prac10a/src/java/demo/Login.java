package demo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

public class Login extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String uname=request.getParameter("uname");
        String password=request.getParameter("pass");
        String name=request.getParameter("name");
        int age=Integer.parseInt(request.getParameter("age"));
        String contact=request.getParameter("contact");
        String roomno=request.getParameter("roomno");
        String email=request.getParameter("email");
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            PreparedStatement pstm=con.prepareStatement("insert into logindata values(?,?,?,?,?,?,?)");
            pstm.setString(1,uname);
            pstm.setString(2,password);
            pstm.setString(3,name);
            pstm.setInt(4,age);
            pstm.setString(5,contact);
            pstm.setString(6,roomno);
            pstm.setString(7,email);
            int row=pstm.executeUpdate();
            if(row==1){
            RequestDispatcher rd=request.getRequestDispatcher("index.html");
            rd.forward(request, response);
            }
            else{
                RequestDispatcher rd=request.getRequestDispatcher("register.html");
                rd.include(request, response);
                out.println("data could not be inserted");
            }
        }
        catch(Exception e){
           out.println(e);
        }
    }
}
