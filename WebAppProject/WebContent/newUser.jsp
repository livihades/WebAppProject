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
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,java.util.*"%>
		
  <main id="main-holder">
    <h1 id="signup-header">Sign Up</h1>
    
    <%String username=session.getAttribute("username").toString();
    String password=session.getAttribute("password").toString();%>
    
    <input type="text" name="username" id="username-field" class="signup-form-field" placeholder="Username" value=<%=username %>>
    <input type="password" name="password" id="password-field" class="signup-form-field" placeholder="Password" value=<%=password%>>
		 
    <form method="post" action="signup.jsp" id="signup-form" name="signup-form" >
      <input type="text" name="name" id="name" class="signup-form-field" placeholder="Name" >
      <input type="date" name="dateofbirth" id="dob-field" class="signup-form-field" placeholder="Date of Birth" >
      <input type="submit" value="Submit" id="signup-form-submit">
  	</form>


	
  
  </main>
</body>

</html>
