<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <link rel="stylesheet" href="CSS/newUser.css">
  <script defer src="home.js"></script>
</head>

<body>
		
  <main id="main-holder">
    <h1 id="signup-header">Sign Up</h1>
		 "
    <form method="post" action="newUser.jsp" id="signup-form" name="signup-form">
      <input type="text" name="username" id="username-field" class="signup-form-field" placeholder="Username">
      <input type="password" name="password" id="password-field" class="signup-form-field" placeholder="Password">
      <input type="text" name="name" id="name" class="signup-form-field" placeholder="Name">
      <input type="date" name="dateofbirth" id="dob-field" class="signup-form-field" placeholder="Date of Birth">
      <input type="submit" value="Submit" id="signup-form-submit">
  	</form>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

	<%
	String name=request.getParameter("name");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String dateofbirth=request.getParameter("dateofbirth");
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/WebAppProject", "root", "anoleo201194");
	Statement st=conn.createStatement();
	
	int i=st.executeUpdate("insert into signup(name,username,password,dateofbirth)values('"+name+"','"+username+"','"+password+"','"+dateofbirth+"')");
	
	}
	catch(Exception e)
	{
	System.out.print(e);
	e.printStackTrace();
	}
	%>
  
  </main>
</body>

</html>
