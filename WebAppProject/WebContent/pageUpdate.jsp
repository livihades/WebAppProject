<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Page Update</title>
  <link rel="stylesheet" href="CSS/pageUpdate.css">
  <script defer src="pageUpdate.js"></script>
</head>

<body>
  <main id="main-holder">
    <h1 id="update-header">Page Update</h1>

    
    <form id="update-form">
      <input type="text" name="name" id="name-field" class="update-form-field" placeholder="Name">
      <input type="date" name="dateofbirth" id="date-field" class="update-form-field" placeholder="Date">
      <input type="submit" value="Update" id="update-form-submit" onclick="location.href='http://localhost:8080/WebAppProject/myhomepage.jsp';">
    </form>
    
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,java.util.*"%>

	<%
	String name=request.getParameter("name");
	String username=session.getAttribute("username").toString();
	String password=session.getAttribute("password").toString();
	String dateofbirth=request.getParameter("dateofbirth");
	PreparedStatement ps = null;
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/WebAppProject", "root", "anoleo201194");
	Statement st=conn.createStatement();
	
	String sql ="update signup set name=?, dateofbirth=? where username=? and password=?;";
	ps = conn.prepareStatement(sql);
	ps.setString(1, name);
	ps.setString(2, dateofbirth);
	ps.setString(3, username);
	ps.setString(4, password);
	int i=ps.executeUpdate();
	
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