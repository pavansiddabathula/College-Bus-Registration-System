<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
 <%
    String msg=(String)session.getAttribute("msg");
 %>
   <header class="header">
      <ul>
         <li><a href="#">Home</a></li>
         <li><a href="#">About Us</a></li>
         <li><a href="#">Contact Us</a></li>
         <li><a href="StudentLogin.jsp" >Student Login</a></li>
         <li><a href="AdminLogin.jsp">Admin Login</a></li>
         <li><a href="FacultyLogin.jsp">Faculty Login</a></li>
      </ul>
   </header>
   <div class="hop">
      <h1>SRGEC Bus Transportation </h1>
   </div>
   <div class="fox">
     <iframe name="f1" src="" >
     <%=msg %>
     </iframe> 
   </div>
   <footer>
      <h1>bustransportation@gmail.com</h1>
   </footer>
</body>
</html>
