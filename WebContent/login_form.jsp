<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@ include file = "header.html" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-Tags -->
	<!-- Stylesheets -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!--// Stylesheets -->
	<!--fonts-->
	<!-- title -->
	<!-- body -->
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<!--//fonts-->
</head>
<body>
<br>
<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2>Login Form</h2>
  <form action="login_validate" method="post">
    <div class="form-group">
      <label>Username:</label>
      <input type="text" class="form-control" placeholder="Enter your name" name="name">
    </div>
    <div class="form-group">
      <label>Password:</label>
      <input type="password" class="form-control" data-toggle="password" required placeholder="Enter password" name="password" id="myInput"><br>
<!--       <input type="checkbox" value="show password" onclick="myFunction()"> -->
      <button type="button" class="btn btn-outline-info" onclick="myFunction()">Show</button>
					    </div>
    <div class="form-group">
      <label for="pwd">Login As:</label>
      <select name="loginas" class="form-control">
					
					<option value="school">school</option>
					<option value="volunteer">volunteer</option>
					</select>
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
      <a href="fpass.jsp">Forgot Password</a>
      </label>
    </div>
    <button type="submit" class="btn btn-primary" value="LOGIN">LOGIN</button>
  </form>
  </div>
  </div>
</div>

			<script>
				function myFunction() {
					var x = document.getElementById("myInput");
					if (x.type === "password") {
						x.type = "text";
					} else {
						x.type = "password";
					}
				}
			</script>
			<br>
	<%@ include file = "footer.html" %>
</body>
</html>