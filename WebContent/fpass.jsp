<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Email Verification</title>
</head>
<body>
<%@ include file="header.html" %>

<form  action="SendPass" method="post">


<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 

<h2>Email Verification</h2>
    <div class="form-group">
      <label>Enter your email id:</label>
      <input type="email" class="form-control" name="Email" required>
    </div>
    <div class="form-group">
            <input type="submit"class="btn btn-success" value="Submit" >
            <input type="reset"class="btn btn-success" value="reset"> 
    </div>
    </div>
    </div>
    </div>
  
</form>

<%@ include file="footer.html" %>

</body>
</html>