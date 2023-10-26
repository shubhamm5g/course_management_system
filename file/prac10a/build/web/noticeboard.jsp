<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice Board</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <header> 
            <nav>
                <div class="header_logo">
                <img src="logo.png" alt="invalid" />
                <h3>ICONIC STUDENTS ACADEMY</h3>
                </div>
                <ul>
                    <li><a href="dashboard.jsp">Home Page</a></li>
                     <li><a href="cources.jsp">View Courses</a></li>
                      <li><a href="aboutus.html">About Us</a></li>
                      <li><a href="Logout">Logout</a></li>
                </ul>
            </nav>
        </header>
        <div class="member">
            <h1>Notices</h1>
            <table>
                <tr>
                    <th>Notices</th>
                    <th>Date</th>
                </tr>
            <%
           try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
                Statement smt=con.createStatement();
                String statement="select * from noticeBoard";
                ResultSet rs=smt.executeQuery(statement);
                while (rs.next()){
                    %>
                    <ol></ol>
                        <td><%=rs.getString("notice")%></td>
                        <td><%=rs.getString("data")%></td>
                    </tr>
                    <%
                }
            }   
            catch(Exception e){
            }
            %>
            </table>
        </div>
    </body>
</html>
