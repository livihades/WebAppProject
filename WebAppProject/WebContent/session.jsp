<html> 
<head>
<title>Passing the input value to a session variable</title>
</head>
<body> 
<% 
String name=request.getParameter("inputname"); 
out.print("Welcome "+ name);
session.setAttribute("sessname",name); 
%> 
<a href="output.jsp">Check Output Page Here </a>
</body> 
</html>