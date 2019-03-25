<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Participation Volunteer</title>
</head>
<body>
<%@ include file = "header.html" %>
<div class="form_bloack" style="margin:50px 300px">
<form action="OtherVolEvent" method="post">
<h3>Volunteer Post Form</h3>
<p>Title:<input type="text" name="vol_title"></p>
<p>Volunteer Type:<input type="text" name="volunteer_type"></p>
<p>Start Date:<input type="date" name="start_date"></p>
<p>End Date:<input type="date" name="end_date"></p>
<p>Location:<input type="text" name="location"></p>
<p>Description:<input type="text" name="description"></p>
<p><input type="submit" name="submit" value="SUBMIT"><input type="reset" name="reset details"></p>
</form>
</div>
<%@ include file = "footer.html" %>
</body>
</html>