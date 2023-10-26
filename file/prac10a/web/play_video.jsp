
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Playing Course</title>
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
        <div class="play_video" style="padding: 30px 40px">
           
            <%
                String link=request.getParameter("video_link");
                String desc=request.getParameter("video_desc");
                String name=request.getParameter("video_name");
                ;
            %>
            
            <br>
            
            <h3>Playing video...<br> <h1><%=name%></h1></h3>
            <p><b>Description:  </b><%=desc%></p><br>
            <video width="900"  controls>
                 <source src="<%=link%>" type="video/mp4">
            </video>
            
        </div>
    </body>
</html>
