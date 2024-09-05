<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="login1.css">
</head>
<body>
    <%
    String msg=request.getParameter("msg");
    if(msg==null)
        msg="";
    %>
  <header class="header">
      <ul>
         <li><a href="index1.jsp">Home</a></li>
         <li><a href="#">About Us</a></li>
         <li><a href="#">Contact Us</a></li>
         <li><a href="StudentLogin.jsp" >Student Login</a></li>
         <li><a href="AdminLogin.jsp">Admin Login</a></li>
         <li><a href="FacultyLogin.jsp">Faculty Login</a></li>
      </ul>
   </header>
      <div class="hop">
      <h1>Login with Your E-cap Credentials</h1>
   </div>
   <div class="fox">
      <div class="box1">
       <div class="box">
            <form  method="post" action="Logincheck.jsp">
                <h1>Student Login</h1>
                <h1><%=msg %></h1>
                <div >
                    <p>UserName</p>
                    <input type="text" name="username" placeholder="UserName" required>
                    <p>Password</p>
                    <input type="password" name="password" placeholder="Password"required><br>
                    <button type="submit" name="submit" value="Student">Login</button>
                    <button type="reset" id="">Clear</button><br>
                    <span><input type="checkbox" id="rememberMe">&nbsp;RememberMe</span>
                    <div class="forgot">
                    <a href="#">forgotPassword</a>
                    </div>
                 </div>   
            </form>
        </div>
      </div>   
    </div> 
   <footer>
      <h1>bustransportation@gmail.com</h1>
   </footer>
</body>
</html>
    