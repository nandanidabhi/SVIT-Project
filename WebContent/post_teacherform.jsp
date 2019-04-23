<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher Form</title>
<%@ include file = "header.html" %>

</head>
<body>

<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2>Teachers Post Application</h2>
 <form  action="TeacherEvent" method="post">

     <div class="form-group">
      <label>Title:</label>
      <input type="text" class="form-control" name="activity_title" placeholder="Enter Activity Title">
    </div>
    
    <div class="form-group">
      <label>Medium of teaching:</label>
      <select name="med" class="form-control">
		<option value="hindi">Hindi</option>
		<option value="english">English</option>
		<option value="gujarati">Gujarati</option>
</select>
    </div>
    
     <div class="form-group">
      <label>Subject:</label>
      <input type="text" class="form-control" required placeholder="Enter Subject" name="apply_for"><br>
      </div>
          
        
     <div class="form-group">
      <label>Course content:</label>
      <input type="text" class="form-control" required placeholder="Enter Course content" name="content"><br>
      </div>  

<div class="form-group">
      <label>Start date:</label>
      <input type="date" class="form-control" required placeholder="Enter Course content" name="start_date" id="start_date"><br>
      </div>  

<div class="form-group">
      <label>End date:</label>
      <input type="date" class="form-control" required  name="end_date" id="end_date"><br>
      </div>  
<div class="form-group">
      <label>Location:</label>
      <input type="text" class="form-control" required  name="location"><br>
      </div>  
<div class="form-group">
      <label>Description:</label>
      <input type="text" class="form-control" required  name="description"><br>
      </div>  

   <div class="form-group">
    <button type="submit" class="btn btn-success"  value="SUBMIT POST">SUBMIT</button>
    <button type="reset"  class="btn btn-success" value="RESET">RESET</button>
    </div>

</form>
</div>
</div></div>

<!-- <div class="form_bloack" style="margin:50px 300px"> -->
<!-- <form action="TeacherEvent" method="post"> -->
<!-- <h4> Teachers Post Application</h4>  -->
<!-- <p>Title:<input type="text" name="activity_title" required> </p> -->
<!-- <p>Medium of teaching:<select name="med"></p> -->
<!-- <option value="hindi">Hindi</option> -->
<!-- <option value="english">English</option> -->
<!-- <option value="gujarati">Gujarati</option> -->
<!-- </select> -->
<!-- <p>Subject:<input type="text" name="apply_for" required></p> -->
<!-- <p>Course content:<input type="text" name="content" required></p> -->
<!-- <p>Start date:<input type="date" name="start_date" required></p> -->
<!-- <p>End date:<input type="date" name="end_date" required></p> -->
<!-- <p>location:<input type="text" name="location" required></p> -->
<!-- <p>Description:<input type="textarea" name="description" required></p> -->
<!-- <p><input type="submit" value="SUBMIT POST" name="submit"><input type="reset" value="reset details"></p> -->




<%@ include file = "footer.html" %>
<script>
$(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var minDate= year + '-' + month + '-' + day;
    $('#start_date	').attr('min', minDate);
    
    var maxDate = year + '-' + month + '-' + day;
    $('#end_date').attr('min', maxDate);
});
</script>
</body>
</html>