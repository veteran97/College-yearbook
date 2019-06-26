<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Development of Online College Year Book</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Development of Online College Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
            <li><a href="teacherhome.jsp">Home</a></li>
            <li><a href="tupdateprofile.jsp">Update Profile</a></li>
            <li><a href="tviewachievements.jsp" class="active">View Achievements</a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
       
        <%
        String sql="select * from studentevents "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	%>
        <br/><br/>
         <center>
             <h2><font color="black" size="5"> Students Achievements</font></h2>
        <style>
        td{
            text-align: center;
            height: 25px;
        }
        th{
            text-align: center;
            height: 25px;
        }
           
        </style>
        <table border="2" width="90%">

        <tr style="background-color: brown">
        <th><font color="black">Image</th>
        <th><font color="black">ID</th>
        <th><font color="black">User Name</th>
        <th><font color="black">Year</th>
        <th><font color="black">Event Name</th>
        <th><font color="black">Description</th>

        </tr>

        <%                while (rs.next()) {
        %>

        <tr>
            <td><img src="Gallery/<%=rs.getString("image")%>" height="80" width="80"></td>
        <td><font color="black"><%=rs.getString("id")%></td>
        <td><font color="black"><%=rs.getString("username")%></td>
        <td><font color="black"><%=rs.getString("yr")%></td>
        <td><font color="black"><%=rs.getString("event")%></td>
        <td><textarea rows="2" cols="22" readonly=""><%=rs.getString("description")%></textarea></td>
        </tr>
        <%
            }
        %>
        </table></center>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <p>Developed by <a href="https://www.1000projects.org" target="_blank"> 1000Projects </a></p>
    </footer>
</body>

</html>