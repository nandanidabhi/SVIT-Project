<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Contact Us</title>
</head>
<body>
<%@ include file = "header.html" %>
<br>
<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2>Contact Us</h2>
  <form action="contactus" method="post">
    <div class="form-group">
      <label>Full name:</label>
      <input type="text" class="form-control" placeholder="Enter your full name" name="name">
    </div>
    <div class="form-group">
      <label>Email:</label>
      <input type="email" class="form-control" placeholder="Enter your email" name="email">
    </div>
    <div class="form-group">
      <label>Phone:</label>
      <input type="number" class="form-control" required placeholder="Enter your number" name="phone_us">
    </div>
    <div class="form-group">
      <label>Description:</label>
      <input type="textarea" class="form-control" required placeholder="What you want to ask?" name="description">

    </div>
    <button type="submit" class="btn btn-success" value="SUBMIT">SUBMIT</button>
  </form>
  </div>
  </div>
</div>
<br>
<%@ include file = "footer.html" %>

</body>
</html>