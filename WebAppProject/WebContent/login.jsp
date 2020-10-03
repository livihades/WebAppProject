 <!DOCTYPE html>
<html lang="en"><%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>>

<%@page import="java.sql.*,java.util.*"%>
<%
  		String redirectPage = "newUser.jsp";	
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WebAppProject","root","anoleo201194");
	    String sql = "select * from signup where username=?";
	    PreparedStatement ps = con.prepareStatement(sql);
  
%>
<%
 	    ps.setString(1, request.getParameter("username"));
	    ResultSet rs = ps.executeQuery();
	    System.out.println(ps);
	    if(rs.next()) {
	        System.out.println("login successful");
	        response.sendRedirect("myhomepage.jsp");
	    }
	    else {
	    	session.setAttribute("username", request.getParameter("username"));
	    	session.setAttribute("password", request.getParameter("password"));
	    	System.out.println("hi");
	    	response.sendRedirect("newUser.jsp");
	    	
	   }
	%>