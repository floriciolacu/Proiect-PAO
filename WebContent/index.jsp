<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String currentUser=(String) session.getAttribute("currentUser");
		if(currentUser==null)
		{
	%>
		<h1>Welcome to PAO's Shop </h1> 
		<a href="LoginServlet">Login</a>
		<a href="SignUpServlet">Sign Up</a>
		<p>${param.message}</p>
	<%
		
            }
            else
            {
    %>
	    Welcome back <%= currentUser %>
		<a href="LogoutServlet">Logout</a>  
		<a href="ProfileServlet">Profile</a>
		<a href="ProductServlet">Products</a>  
	<%
		}
    %>
</body>
</html>