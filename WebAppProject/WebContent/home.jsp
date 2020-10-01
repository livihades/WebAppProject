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
    <h1 id="login-header">Log in</h1>
    
    
    <form action="newUser.jsp" method="get" id="login-form">
      <input type="text" name="username" id="username-field" class="login-form-field" placeholder="Username">
      <input type="password" name="password" id="password-field" class="login-form-field" placeholder="Password">
      <input type="submit" value="Login" id="login-form-submit">
    </form>
 
  </main>
</body>

</html>