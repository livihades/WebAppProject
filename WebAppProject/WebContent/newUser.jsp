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
    

    
    
      <input type="text" name="username" id="username-field" class="signup-form-field" placeholder="Username">
      <input type="password" name="password" id="password-field" class="signup-form-field" placeholder="Password">
      <input type="text" name="name" id="name" class="signup-form-field" placeholder="Name">
      <input type="date" name="dateofbirth" id="dob-field" class="signup-form-field" placeholder="Date of Birth">
      <input type="submit" value="Submit" id="signup-form-submit">
  
  
  <%@page import = "java.sql.*,java.util.*,java.io.*"%>
  <%  
   Connection conn = null;
   Statement stmt = null;
      //STEP 2: Register JDBC driver
   	Class.forName("com.mysql.cj.jdbc.Driver");

     //STEP 3: Open a connection
     System.out.println("Connecting to database...");
     conn = DriverManager.getConnection("jdbc:mysql://localhost/WebAppProject","root","anoleo201194");

     //STEP 4: Execute a query
     System.out.println("Creating statement...");
     stmt = conn.createStatement();
     String username = request.getParameter("username");
     String name = request.getParameter("name");
     String password = request.getParameter("password");
     String dateofbirth = request.getParameter("dateofbirth");
     String sql;
     sql = "INSERT INTO signup VALUES ("+name+","+username+", "+dateofbirth+", "+password+");";
     ResultSet rs = stmt.executeQuery(sql);%>
  
  </main>
</body>

</html>