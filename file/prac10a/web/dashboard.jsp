<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.Cookie;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
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
        <%
            String username=request.getParameter("uname");
            
        %>
        <h1 style="text-align: center ;margin-top: 20px; color:#fff3c7; padding: 30px">
            Welcome to ICONIC STUDENTS ACADEMY 
            <span style="text-decoration: underline; color: inherit">
                <%if(username==null){out.println("Welcome Back!"); } else{out.println(username);}%>
            </span>
        </h1>
        <div class="center">
            <div class="introduction">
                <img src="home_photo.jpg" width="400px" alt="invalid"/>
        </div>
        </div>
        <div class="links" ><a href="cources.jsp">Go to Courses</a></div>
    </body>
</html>
