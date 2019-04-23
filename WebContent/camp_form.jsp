<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Camp Form</title>

</head>
<body>
<%@ include file = "header.html" %>
<!-- <div class="form_bloack" style="margin:50px 300px"> -->
<!-- <h4>Camp Post Form</h4> -->
<!-- <form name="camp_registration form" action="CampEvent" method="post"> -->
<!-- 			<p>Title:<select name="cmp_Title"></p> -->
<!--                 <option value="blood_donation">Blood Donation</option> -->
<!--                 <option value="Education">Educational</option> -->
<!--                 <option value="Awareness">Awareness Program</option> -->
<!--                 <option value="other">Other</option></select> -->
<!--             Other:<input type="text" name="cmp_TitleOth_camp" > -->
<!--  -->
<!--             <p>Purpose of camp:<input type="text" name="purpose" required></p> -->
            
<!--             <p>Start Date:<input type="date" name="start_date" required></p> -->
<!--             <p>End Date:<input type="date"  name="end_date" required></p> -->
<!--             <p>Location:<input type="text" name="location" required></p> -->
<!--             <p>Target Number of People:<input type="number" name = "participants" required></p> -->
<!--             <button type="submit" name="submit">Post Form</button> -->
<!--             <button type="reset" name="reset">Reset Details</button> -->

<!--         </form> -->
<!--     </div> -->



<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2>Camp Post Form</h2>
 <form  action="CampEvent" method="post">

     <div class="form-group">
      <label>Title:</label>
      <select name="cmp_Title" class="form-control"></p>
		        <option value="blood_donation">Blood Donation</option>
                <option value="Education">Educational</option>
                <option value="Awareness">Awareness Program</option>
                <option value="other">Other</option></select>
</select>  <label>
</div>
<div class="form-group">
      <label>Other:</label>
      <input type="text" class="form-control"  placeholder="Enter Title if other" name="cmp_TitleOth_camp"><br>
      </div>
          
        
     <div class="form-group">
      <label>Purpose of camp:</label>
      <input type="text" class="form-control" required placeholder="Enter Purpose" name="purpose"><br>
      </div>  

<div class="form-group">
      <label>Start date:</label>
      <input type="date" class="form-control" required name="start_date" id="start_date"><br>
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
      <label>Target Number of People:</label>
      <input type="number" class="form-control" required  name="participants"><br>
      </div>  

   <div class="form-group">
    <button type="submit" class="btn btn-success"  value="SUBMIT POST">SUBMIT</button>
    <button type="reset"  class="btn btn-success" value="RESET">RESET</button>
    </div>

</form>
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