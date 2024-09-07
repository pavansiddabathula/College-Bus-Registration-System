<%
 String user=(String)session.getAttribute("user");
	if (user==null)
	{
		 response.sendRedirect("StudentLogin.jsp.jsp?msg=You can't cheat me okkaayyyy......");	
	}
 %>
  
