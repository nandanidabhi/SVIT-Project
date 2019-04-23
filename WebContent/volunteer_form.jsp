<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volunteer</title>

</head>
<body>
<%@ include file = "header.html" %>

<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3">
<div><h2>Login Details</h2></div> 
 <form  action="vol_reg" method="post" enctype="multipart/form-data">

     <div class="form-group">
      <label> Register as:</label>
      <input class="form-control" type="text" name="title" placeholder="Enter Activity Title" value="volenteer" readonly>
    </div>
       <div class="form-group">
      <label>Username:</label>
      <input type="text" class="form-control" placeholder="Enter your name" name="username">
    </div>
    
     <div class="form-group">
      <label>Password:</label>
      <input type="password" class="form-control" required placeholder="ATLEAST: 8 characters,1 capital,1 small letter" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" id="myInput"><br>
                  <button type="button" class="btn btn-outline-info" onclick="myFunction()">Show</button>
      
      </div>
     
            <div><h3>Contact Information</h3></div>
      <div class="form-group">
      <label>Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="volunteer_name">
      </div>
      <div class="form-group">
      <label>Date of Birth:</label>
      <input type="date" class="form-control" required  name="date" min='1899-01-01' max='2000-01-01'><br>
      </div>
      <div class="form-group">
      <label>Gender:</label>
      <input type="radio" value="male" name="gen">Male  
      <input type="radio" value="female" name="gen" >Female
      </div>
      <div class="form-group">
      <label>Address:</label>
      <textarea type="text" class="form-control" required placeholder="Enter address" rows="4" cols="20" name="address"></textarea>
      </div>
               
      <div class="form-group">
      <label> City:</label>
      <input type="text" class="form-control" required placeholder="Enter city" name="city"/>
      </div>
	  <div class="form-group">
      <label> State:</label>
      <select required name="state" class="form-control" >
      <option value="">Select State</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
      </select>
      </div>
      <div class="form-group">
      <label> Pincode:</label>
      <input type="number" class="form-control" required placeholder="Enter pincode" name="pincode" Maxlength="6">
      </div>
	  <div class="form-group">
      <label>Contact:</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="contact" pattern="[789][0-9]{9}">
      </div>
       <div class="form-group">
      <label>Email Id:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="email" required>
    </div>
       <div class="form-group">
      <label>Profession:</label>
      <input type="radio" name="profession" value="school_tudent">School Student
            <input type="radio" name="profession" value="college_student">College Student
            <input type="radio" name="profession" value="home_maker">Home Maker
            <input type="radio" name="profession" value="employee">Employee
            Other:<input type="text" name="profession" >
            </div>
          
      <div class="form-group">
      <label> Addhar Number:</label>
      <input type="number" class="form-control" required placeholder="Enter  Addhar Number" Maxlength="12" name="Adhar">
      </div>
             <div class="form-group">
                  <label>Upload Profile picture:</label>
            
      <div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" name="file">
    <label class="custom-file-label">Upload Profile picture</label>
  </div>
  </div>
  </div>
      <div><h3>Volunteer Position Information</h3></div>
      <div class="form-group">
            <label> What skills can you contribute to the organization:</label>
      
      <div class="form-row">
      <div class="col">
      <label>Skill Name:</label><input type="text" class="form-control" required name="skill_name_1" >
      <label>Skill Name:</label><input type="text" class="form-control" required name="skill_name_2" >
      <label>Skill Name:</label><input type="text" class="form-control" required name="skill_name_3" >
      </div>     
       <div class="col">
      <label>Skill Proficiency out of 5:</label><input type="number" class="form-control" max="5" min="0" name="Skill_1">
      <label>Skill Proficiency out of 5:</label><input type="number" class="form-control" max="5" min="0" name="Skill_2">
     <label>Skill Proficiency out of 5:</label><input type="number" class="form-control" max="5" min="0" name="Skill_3">
       </div>
      </div>
      </div>
      
            <div class="form-group">
      <label>What experience do you have in this area?</label>
      <label> Explain in detail:</label>
      <textarea type="text" class="form-control" required placeholder="Type" rows="4" cols="20" name="Exp"></textarea><br>
      </div>
       <div class="form-group">
                  <label>Upload necessary Document/proof/certificate:</label>
            
      <div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" name="certificate">
    <label class="custom-file-label">Upload necessary Document/proof/certificate</label>
  </div>
  </div>
  </div>
     
    <div class="form-group">
      <label>What number of days will you be available ?</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="days" max="365">
      </div>
      <div class="form-group">
      <label>Start date:</label>
      <input type="date" class="form-control" required placeholder="Enter Course content" name="start_date" id="start_date">
      </div>  

<div class="form-group">
      <label>End date:</label>
      <input type="date" class="form-control" required  name="end_date" id="end_date"><br>
      </div>  
      <div class="form-group">
      <label>Services you wish to offer:</label>
            <input type="checkbox" name="service" value="teach">Teaching
            <input type="checkbox" name="service" value="Volunteer_help">Volunteer
            <input type="checkbox" name='service' value="donate">Donate
            <input type="text" class="form-control"name="service" >
    </div>
      <h3><div>Education/Work Experience</div></h3>
      <h5><div>10th Details</div></h5>
 	
 	<div class="form-group">
      <label>School Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="school_name">
      </div>  
      
      <div class="form-group">
      <label>State:</label>
      <select required name="school_state" class="form-control" >
      <option value="">Select State</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
      </select>
      </div>
      
      <div class="form-group">
      <label>Percentage gained:</label>
      <input type="number" class="form-control" required placeholder="Enter name" name="10_per" max="100">
      </div>
      
      <div class="form-group">
      <label>Pass-out Year:</label>
      <input type="month" class="form-control" required name="10_year">
      </div>
      
      
      
      <h5><div>12th Details</div></h5>
       <div class="form-group">
              <label>School Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="12school_name">
      </div>  
      
      <div class="form-group">
      <label>State:</label>
      <select required name="12school_state" class="form-control" >
      <option value="">Select State</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
      </select>
      </div>
      
      <div class="form-group">
      <label>Percentage gained:</label>
      <input type="number" class="form-control" required placeholder="Enter name" name="12_per" max="100">
      </div>
      
      <div class="form-group">
      <label>Pass-out Year:</label>
      <input type="month" class="form-control" required name="12_year">
      </div> 
            
	<h5><div>Higher Qualification Details</div></h5>
              <div class="form-group">
              <label>Institution Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="clgname">
      </div>  
      
      <div class="form-group">
      <label>State:</label>
      <select required name="clg_state" class="form-control" >
      <option value="">Select State</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
      </select>
      </div>
      
      <div class="form-group">
      <label>Percentage gained:</label>
      <input type="number" class="form-control" required placeholder="Enter percentage" name="other_per" max="100">
      </div>
      
      <div class="form-group">
      <label>Pass-out Year:</label>
      <input type="month" class="form-control" required name="12_year">
      </div>             
     <div class="form-group">
                  <label>Upload necessary Document/proof/certificate for Higher Qualification:</label>
            
      <div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" name="other_certificate">
    <label class="custom-file-label">Upload necessary Document for Higher Qualification</label>
  </div>
  </div>
  </div>
                 
      <div class="form-group">
      <label>Where did you come to know about this organization?</label>
      <input type="text" class="form-control" required placeholder="Enter here" name="know">
      </div>
      <div class="form-group">
      
      <input type="checkbox" required name="agree">
      <label>I agree with all the terms and conditions:</label>
      </div>
        
     <div class="form-group">
    <button type="submit" class="btn btn-success"  value="SUBMIT POST">SUBMIT</button>
    <button type="reset"  class="btn btn-success" value="RESET">RESET</button>
    </div>
     
             <label>    *All applicants must answer all pf the following questions. Failure to answer honestly will disqualify the applicant from the service as a volunteer with our organization.
     </label>
     
     </form>
     </div>
     
     </div>
     </div>
     

      
      
<!--  <form name="volunteer_form" action="vol_reg" method="post" enctype="multipart/form-data"> -->
<!--         <div> -->
<!--             <div>Login Details</div> -->
<!--    Register as:<input type="text" name="title" value="volentier"><br><br> -->
<!--             Username:<input type="text" name="username"><br><br> -->
<!--             Password:<input type="password" name="password"><br><br> -->

<!--             <div>Conatact Information</div> -->
            
<!--             Name:<input type="text" name="volunteer_name" ><br> -->
<!--             Date of Birth<input type="date"  name="date"><br> -->
<!--             Gender:<input type="radio" value="male" name="gen">Male  -->
<!--             <input type="radio" value="female" name="gen" >Female<br> -->
<!--             Address:<input type="text"name="address" ><br> -->
<!--             City:<input type="text" name="city" ><br> -->
<!--             State:<input type="text" name="state" ><br> -->
<!--             Pincode:<input type="number" name="pincode" ><br> -->
<!--             Contact Number:<input type="number" name="contact" ><br> -->
<!--             Email Id:<input type="email" name="email" ><br> -->
<!--             Profession:<input type="radio" name="profession" value="school_tudent">School Student -->
<!--             <input type="radio" name="profession" value="college_student">College Student -->
<!--             <input type="radio" name="profession" value="home_maker">Home Maker -->
<!--             <input type="radio" name="profession" value="employee">Employee -->
<!--             Other:<input type="text" name="profession" ><br> -->
<!--             Addhar Number:<input type="number" name="Adhar"><br> -->
<!--             Uppload Profile picture:<input type="file" name="file"><br> -->
<!--             <br><br> -->
<!--             <div>Volunteer Position Information</div> -->
<!--             <br><br> -->
<!--             What skills can you contribute to the organization:<br> -->
<!--             1.Skill Name:<input type="text" name="skill_name_1" > -->
<!--                     Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_1"><br> -->
<!--             2.Skill Name:<input type="text" name="skill_name_2" > -->
<!--                     Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_2"><br> -->
<!--             3.Skill Name:<input type="text" name="skill_name_3" > -->
<!--                     Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_3"><br> -->
<!--             What experience do you have in this area? Explain in detail:<textarea rows="5" cols="5" name="Exp"></textarea> -->
<!--             Upload necessary Document/proof/certificate"<input type="file" name="certificate"><br> -->
<!--             What number of days will you be available?<input type="number" name="days" ><br> -->
<!--             Start date:<input type="date" name="start_date">  -->
<!--             End Date:<input type="date" name="end_date"><br> -->
<!--             Services you wish to offer: -->
<!--             <input type="checkbox" name="service" value="teach">Teaching -->
<!--             <input type="checkbox" name="service" value="Volunteer_help">Volunteer Volunteer_help -->
<!--             <input type="checkbox" name='service' value="donate">Donate -->
<!--             <input type="text" name="service" ><br> -->
            
<!--             <div>Education/Work Experience</div> -->
            
<!--             10th Details<br> -->
<!--             School Name:<input type="text" name="school_name" > -->
<!--             State:<input type="text" name="school_state" ><br> -->
<!--             Percentage gained:<input type="number" name="10_per" >%<br> -->
<!--             Pass-out Year:<input type="date" name="10_year"><br> -->
           
<!--             12th Details:<br> -->
<!--             School Name:<input type="text" name="12school_name" > -->
<!--             State:<input type="text" name="12school_state" ><br> -->
<!--             Percentage gained:<input type="number" name="12_per" >%<br> -->
<!--             Pass-out Year:<input type="date" name="12_year"><br> -->
            
<!--             Higher Qualification Details: -->
<!--             Institution Name:<input type="text" name="clgname"> -->
<!--             State:<input type="text" name="clg_state" ><br> -->
<!--             Percentage gained:<input type="number" name="other_per" >%<br> -->
<!--             Pass-out Year:<input type="date" name="other_year"><br> -->
<!--             Upload certificate of highest Qualification:<input type="file" name="other_certificate"> -->
<!--             <br><br> -->
<!--             Where did you come to know about this organization?<input type="text" name="know"><br> -->
<!--             <input type="checkbox" name="agree" >I agree with all the terms and conditions.<br> -->

<!--             <input type="submit" name="submit" value="Register"><input type="reset" name="reset" value="reset"> -->
<!--             <br><br> -->
<!--             *All applicants must answer all pf the following questions. Failure to answer honestly -->
<!--             will disqualify the applicant from the service as a volunteer with our organization. -->
<!--         </div> -->
<!--         </form> -->
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
</body>
</html>