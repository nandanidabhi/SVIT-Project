<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file = "header.html" %>
<br>
<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2 style="text-align: center">Register In</h2>
<br>
<center>
  <form name="register_form">
    <button type="button" class="btn btn-warning"><a href="school_form.jsp">SCHOOL</a></button>&nbsp;
    <button type="button" class="btn btn-warning"><a href="volunteer_form.jsp">Volunteer</a></button>&nbsp;
    <button type="button" class="btn btn-warning"><a href="team_form.jsp">Team</a></button>&nbsp;
  </form>
  </center>
  </div>
  </div>
</div>
<br>
<%@ include file = "footer.html" %>
</body>
</html>