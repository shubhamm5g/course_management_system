<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Members List</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body >
        <header> 
            <nav>
                <div class="header_logo">
                <img src="logo.png" alt="invalid" />
                <h3>ICONIC STUDENTS ACADEMY</h3>
                </div>
                <ul>
                    <li><a href="dashboard.jsp">Home Page</a></li>
                     <li><a href="members.jsp">View Courses</a></li>
                      <li><a href="aboutus.html">About Us</a></li>
                      <li><a href="Logout">Logout</a></li>
                </ul>
            </nav>
        </header>
        
        <div class="courses">
            <h1 style="text-align: center; margin-top: 30px; ">All the Courses</h1>
             <div class="course_container">   
                 
            <%
           try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
                Statement smt=con.createStatement();
                String statement="select * from courses";
                ResultSet rs=smt.executeQuery(statement);
                while (rs.next()){
                    %>
                <div class="course_box">
                    <div class="img_box">
                        <img class="course_img" src="<%=rs.getString("course_img")%>" alt="<%=rs.getString("course_img")%>" /><br>
                    </div>
                    <div class="detail_box">
                        <h3><%=rs.getString("course_name")%></h3><br>
                        <a class="play_link" href=""><div class="play_link_button">Click here to play</div></a>
                    </div>
                    
                    </div>
                    <%
                }
            }   
            catch(Exception e){
            }
            %>
                    </div>s

        </div>
    </body>
</html>
