<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <link rel="stylesheet" href="CSS/myhomepage.css">
  <script defer src="home.js"></script>
</head>

<body>
  <main id="main-holder">
    <h1 id="homepage-header">My Home Page</h1>
    
    <%
    String username=session.getAttribute("username").toString();
	String password=session.getAttribute("password").toString();
	%>
    
    <input type="text" name="username" id="username-field" class="signup-form-field" placeholder="Username" value=<%=username%> disabled></input>
  
    
    <form id="homepage-form">
 
      <input type="button" onclick="location.href='http://localhost:8080/WebAppProject/pageUpdate.jsp';" value="Page Update" class="homepage-form-field"/>
      <input type="button" onclick="location.href='http://localhost:8080/WebAppProject/products.jsp';" value="Products" class="homepage-form-field" />
      <input type="button" onclick="location.href='http://localhost:8080/WebAppProject/basket.jsp';" value="Basket" class="homepage-form-field" />
    </form>
  
  </main>
</body>

</html>