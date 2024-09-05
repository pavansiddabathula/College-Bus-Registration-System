<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
<%
 String user=(String)session.getAttribute("user");
	if (user==null)
	{
		 response.sendRedirect("FacultyLogin.jsp.jsp?msg=You can't cheat me okkaayyyy......");	
	}
 %>
 <header class="header">
      <ul>
         <li><a href="home.jsp" target="f1">Home</a></li>
         <li><a href="rules.jsp" target="f1">Student Details</a></li>
         <li><a href="registeration.jsp" target="f1">faculty-Details</a></li>
         <li><a href="routes.jsp" target="f1">Routes Availability</a></li>
         <li><a href="BusDetails.jsp" target="f1">Bus-Details</a></li>
      </ul>
      <ul class="right">
          <li><a href="logout.jsp">Logout</a></li>
      </ul>
  </header>
  <h1 style="text-align:right">Current user:<%=user %></h1>
  <iframe name="f1">
  </iframe>
</body>
</html>
    
