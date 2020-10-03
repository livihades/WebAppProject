<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="CSS/home.css">

</head>

<body>
  <main id="main-holder">
    <h1 id="login-header">Log in</h1>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,java.util.*"%>
	<%
  		String redirectPage = "newUser.jsp";	
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WebAppProject","root","anoleo201194");
	    String sql = "select * from signup where username=?";
	    PreparedStatement ps = con.prepareStatement(sql);
  
	%>
	
	<form action="login.jsp">
	<input type="text" name="username" id="username-field" class="login-form-field" placeholder="Username" required>
    <input type="password" name="password" id="password-field" class="login-form-field" placeholder="Password" required>
    <input type="submit" name="submit-btn" id="button-field" class="login-form-field" value="Login">
    </form>
   
 
 	
 
  </main>
</body>

</html>