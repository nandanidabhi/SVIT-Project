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
<!-- <div class="form_bloack" style="margin:50px 300px"> -->
<!-- <form action="OtherVolEvent" method="post"> -->
<!-- <h3>Volunteer Post Form</h3> -->
<!-- <p>Title:<input type="text" name="vol_title"></p> -->
<!-- <p>Volunteer Type:<input type="text" name="volunteer_type"></p> -->
<!-- <p>Start Date:<input type="date" name="start_date"></p> -->
<!-- <p>End Date:<input type="date" name="end_date"></p> -->
<!-- <p>Location:<input type="text" name="location"></p> -->
<!-- <p>Description:<input type="text" name="description"></p> -->
<!-- <p><input type="submit" name="submit" value="SUBMIT"><input type="reset" name="reset details"></p> -->
<!-- </form> -->
<!-- </div> -->




<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2>Volunteer Post Form</h2>
 <form  action="OtherVolEvent" method="post">

     <div class="form-group">
      <label>Title:</label>
      <input type="text" class="form-control" name="vol_title" placeholder="Enter Activity Title">
    </div>
    
     <div class="form-group">
      <label>Volunteer Type:</label>
      <input type="text" class="form-control" required placeholder="VOlunteer Type" name="volunteer_type"><br>
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
    
 
    </div></form>
</div>
</div></div>
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


<%@ include file = "footer.html" %>
</body>
</html>