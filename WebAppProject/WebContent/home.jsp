<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="CSS/home.css">
  <script defer src="home.js"></script>
</head>

<body>
  <main id="main-holder">
    <h1 id="login-header">Login</h1>
    
    
    <form id="login-form">
      <input type="text" name="username" id="username-field" class="login-form-field" placeholder="Username">
      <input type="password" name="password" id="password-field" class="login-form-field" placeholder="Password">
      <input type="submit" onClick="myFunction()" value="Login" id="login-form-submit">
      <script>
       function myFunction() {
         window.location.href="http://localhost:8080/WebAppProject/newUser.jsp";
       }
     </script>
    </form>
 
  </main>
</body>

</html>