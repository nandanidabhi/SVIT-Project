<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School</title>
</head>
<body>
<%@ include file = "header.html" %>
<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2>School Form</h2>
 <form  action="School_reg" method="post">

                <div>Login Details</div>
                 <div class="form-group">
      <label>Title:</label>
      <input type="text" class="form-control" value="school" name="title" readonly>
    </div>
    
    <div class="form-group">
      <label>Username:</label>
      <input type="text" class="form-control" placeholder="Enter your name" name="username">
    </div>
    
     <div class="form-group">
      <label>Password:</label>
      <input type="password" class="form-control" required placeholder="ATLEAST: 8 characters,1 capital,1 small letter" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="myInput"><br>
            <button type="button" class="btn btn-outline-info" onclick="myFunction()">Show</button>
      
      </div>
          
            <div>School Information</div>
            
            
     <div class="form-group">
      <label>School Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="school_name">
      </div>
      <div class="form-group">
      <label>Registration Number:</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="registration_no">
      </div>
      
       <div class="form-group">
      <label>Contact:</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="school_contact" pattern="^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[789]\d{9}|(\d[ -]?){10}\d$">
      </div>
      
        <div class="form-group">
      <label>Address:</label>
      <textarea type="text" class="form-control" required placeholder="Enter address" rows="4" cols="20" name="sch_address"></textarea>
      </div>
      
      <div class="form-group">
      <label> City/Taluka:</label>
      <input type="text" class="form-control" required placeholder="Enter city" name="sch_city"/>
      </div>
      
      <div class="form-group">
      <label> State:</label>
      <select class="form-control" required name="sch_state">
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
      <input type="number" class="form-control" required placeholder="Enter pincode" name="sch_pincode" maxlength="6"/>
      </div>
      <div class="form-group">
      <label> Medium of Teaching:</label>
      <input type="text" class="form-control" required placeholder="Enter Teaching medium" name="sch_med"/>
      </div>
      
      <div class="form-group">
      <label>Board:</label>
      <select required name="sch_board" class="form-control">
                <option value="private" >Private</option>
                <option value="Government">Government</option>
                <br>
            </select>
      </div>
      
      
           <div class="form-group">
      <label>Type of School:</label>
          <select required name = "sch_type" class="form-control">
                <option value="girl" >Girls School</option>
                <option value="boy">Boys School</option>
                <option value="co_ed">Co-ed School</option>
            </select>
            </div>
            <div class="form-group">
      <label> Total Number of students in school:</label>
      <textarea type="number" class="form-control" required placeholder="Enter Total Number of students in school"  name="number_of_students"/></textarea><br>
      </div>
      <div class="form-group">
      <label>Highest Standard of Education:</label>
      <input type="number" class="form-control" placeholder="Enter Highest Standard of Education" name="highest_education" maxlength="12" required>
    </div>
      <div class="form-group">
      <label> Website of School:</label>
      <input type="url" class="form-control" placeholder="Enter website" name="website" required>
    </div>
       <div class="form-group">
      <label>Email Id:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="email_school" required>
    </div>
       <div class="form-group">
      <label>Interested in:</label>
      <select value="camps" name="interested">
            <option value="camps">camps
            <option value="donation">donation
            <option value="teaching">Teaching<br>
			</select>
    </div>
      <div>Contact Person information</div>
            <div class="form-group">
      <label>Name:</label>
      <input type="text" class="form-control" placeholder="Enter Name" name="sch_cnt_name" required>
    </div>
	<div class="form-group">
      <label>Designation:</label>
      <input type="text" class="form-control" placeholder="Enter designation" name="sch_cnt_designation" required>
    </div>
            <div class="form-group">
      <label>Contact:</label>
      <input type="number" class="form-control" placeholder="Enter contact" name="sch_cnt_contact" pattern="[789][0-9]{9}" required>
    </div>
            <div class="form-group">
      <label>Email Id:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="sch_cnt_email" required>
    </div>
   <div class="form-group">
    <label>  <input type="checkbox"  name="agree" required>I on the behalf of the school/institution agree to 
            truthfully fill the form details.I agree to all the terms and conditions as mentioned.</label>
            <br><br>
    </div>
          <div class="form-group">
            <input type="submit"class="btn btn-success" value="Register School" >
            <input type="reset"class="btn btn-success" value="reset"> 
    </div>

        </form>
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