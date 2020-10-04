<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Products</title>
  <link rel="stylesheet" href="CSS/products.css">
  <script defer src="products.js"></script>
</head>

<body>
  <main id="main-holder">
  
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*"%>
  
	<%
		
  		//String redirectPage = "newUser.jsp";	
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WebAppProject","root","anoleo201194");
	    String sql = "select * from desktops;";
	    PreparedStatement ps = con.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
	    System.out.println(ps);
	    
	    %>
    <h1 id="prodcut-header">Products</h1>
    
    <table id="desktops" class="desktops" border>
    <tr><th>Desktops</th>
    <th>Price in Euros</th></tr>
    <%while(rs.next()){%> 
    
    <tr tabindex="0">
	    <td class="tablefocus" contenteditable><%=rs.getString("desktopname") %> </td>
	    <td class="tablefocus" contenteditable><%=rs.getInt("laptopprice") %></td>
	    <td class="button"> <button>Add to basket!</button></td>
	</tr>
	
	<%} %>
	</table>
	<% 
		Class.forName("com.mysql.jdbc.Driver");
     	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/WebAppProject","root","anoleo201194");
		String sql2 = "select * from laptops;";
	    PreparedStatement pss = con.prepareStatement(sql2);
	    ResultSet rss = pss.executeQuery();
	    System.out.println(pss);
	 %>
	<table class="desktops" id="desktops" border>
    <tr><th>Laptops</th>
    <th>Price in Euros</th></tr>
    <%while(rss.next()){%> 
    
    <tr class="tablerow" tabindex="0">
    		
	    <td class="tablefocus"><%=rss.getString("laptopname") %></td>
	    <td class="tablefocus"><%=rss.getInt("laptopprice") %></td>
	    <td class="button" onclick="GetCellVallues()"> <button onAction="">Add to basket!</button></td>
	</tr>
	
	<%} %>
	
	<script>function GetCellValues() {
		    var table = document.getElementById('desktops');
		    for (var r = 0, n = table.rows.length; r < n; r++) {
	        for (var c = 0, m = table.rows[r].cells.length; c < m; c++) {
	            alert(table.rows[r].cells[c].innerHTML);
	        }
	    }
	}</script>
	
	</table>
	
	<label for="Price">Price</label>
	
	
	
    
  
  </main>
</body>

</html>