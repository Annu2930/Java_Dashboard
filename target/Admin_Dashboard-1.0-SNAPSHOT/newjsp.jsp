<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<!-- Add Font Awesome CDN for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
  body {
    font-family: 'Poppins', sans-serif;
    background-image: linear-gradient(to top right, #1eeaff, purple, violet);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }

  .container {
    max-width: 400px;
    padding: 40px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin: 20px;
  }

  .brand-title {
    font-size: 1.8rem;
    font-weight: 900;
    color: black;
    text-align: center;
    margin-bottom: 30px;
  }

  .inputs {
    margin-top: 30px;
  }

  label,
  input,
  button {
    display: block;
    width: 100%;
    padding: 0;
    border: none;
    outline: none;
    box-sizing: border-box;
  }

  input {
    height: 50px;
    padding: 10px;
    border-radius: 25px;
    margin-bottom: 15px;
  }

  button {
    background-color: mediumorchid;
    color: #fff;
    height: 40px;
    border-radius: 20px;
    cursor: pointer;
    font-weight: 900;
    transition: background-color 0.5s ease;
    background-image: linear-gradient(to right, #1eeaff, purple, violet);
  }

  button:hover {
    background-color: blueviolet;
  }

  .forgot-password {
    text-align: right;
    margin-top: 10px;
    font-size: 14px;
    
  }

  .sign-up {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
  }

  .sign-up a {
    color: #1DA1F2;
    text-decoration: none;
  }

  /* Style for icons */
  .icon {
    margin-right: 10px;
    color: grey;
  }
</style>
</head>
<body>
<div class="container">
  <h1 class="brand-title">Login</h1>
  <form method="post" action="login.jsp" class="inputs" id="loginForm">
    <label for="username"><i class="icon fas fa-user"></i>Username</label>
    <input type="text" id="username" name="username" placeholder="Enter your admin username" required>
    <label for="password"><i class="icon fas fa-lock"></i>Password</label>
    <input type="password" id="password" name="password" placeholder="Enter your admin password" required>
    <button type="submit">Login</button>
  </form>
  <div class="forgot-password">
    <a href="#">Forgot Password?</a>
  </div>
  <div class="sign-up">
    <p>Don't have an account? <a href="#">Sign Up</a></p>
  </div>
</div>

</body>
</html>

