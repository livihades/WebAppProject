 <!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%String username=session.getAttribute("username").toString();
    String password=session.getAttribute("password").toString();

	String name=request.getParameter("name");
	String dateofbirth=request.getParameter("dateofbirth");
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/WebAppProject", "root", "anoleo201194");
		Statement st=conn.createStatement();
		
		int i=st.executeUpdate("insert into signup(name,username,password,dateofbirth)values('"+name+"','"+username+"','"+password+"','"+dateofbirth+"')");
		System.out.println(i);
		response.sendRedirect("myhomepage.jsp");
	
	}
	catch(Exception e)
	{
	System.out.print(e);
	e.printStackTrace();
	}
%>