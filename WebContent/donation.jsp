<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donation</title>
</head>
<body>
    <%@ include file = "header.html" %>
<div class="form_block" style="margin:50px 300px">
<form  action="Donation" method="post">
<!--         <h4>Donation Form</h4> -->
<!--             <p>Donar's Details:</p> -->
<!--             <p>    User Name:<input type="text" name="username" required>  </p> -->
<!--                <p>  Password:<input type="password" name="password" required></p>  -->
<!--             <p>First Name:<input type="text" name="f_name" required>  </p> -->
<!--             <p>Last Name:<input type="text" name="l_name" required></p> -->
<!--             <p>Contact Number:<input type="text"  name="contact" required></p> -->
<!--            <p> Email Id:<input type="email" name="email_id" required></p> -->
<!--             <p>Gender:<input type="radio" name="gender">Male <input type="radio" name="gender">Female</p> -->
<!--             <p>Address:<textarea row=10 cols="10" required name="don_address"></textarea></p> -->
<!--             <p>State:<input type="text" name="state" required></p> -->
<!--            <p> Pincode:<input type="number" required name="pincode"></p> -->
<!--             <p>Addhar Number:<input type="number" name="a_no"></p> -->
<!--             <hr> -->
<!--             Donation Details: -->
<!--             Choose Currency:<select name="Currency" required > -->
<!--                 <option value=INR>Indian Rupees</option> -->
<!--                 <option value="Yen">Yen</option> -->
<!--                 <option value="US Dollar">US Dollar</option> -->
<!--             </select> -->
<!--             Amount to be donated:<input type="number" required name="Amount"> <br> -->
<!--             Donation should be used for:<select name="donation_used" required> -->
<!--                 <option value="Education_program">Educational Programs</option> -->
<!--                 <option value="Awareness_program">Awareness Programs</option> -->
<!--                 <option value="Healtcare">Healthcare Programs</option> -->
<!--                 <option value="any">Any of the above</option> -->
<!--                 </select> -->
<!--             <hr> -->
            
<!--             <p><input type="checkbox" name="agree" required>I do not require tax receipt for this donation</p> -->

<!--            <p> <button type="submit" name="submit">Donate</button></p> -->

<!--             <div> -->
<!--                 Thank you for your Donation!! when donation is successfull -->
<!--             </div> -->
<!--             </select>  -->
            
    
             <div class="form-row">
             <div  style="max-width: 18rem;">
 
    <h5 class="card-title"><b><h1>Donation Form</h1></b></h5>
    <p class="card-text"><b>Donar's Details:</b></p>
  </div>
 
  </div>
  <br>   <div class="form-group col-md-6">
      <label>Username</label>
      <input type="text" class="form-control" placeholder="User name"name="username" required>
    </div>
    <div class="form-group col-md-6">
      <label>Password</label>
      <input type="password" class="form-control" placeholder="Password"name="password" required>
    </div>
    <div class="form-group col-md-6"">
    Firstname: <input type="text" class="form-control" placeholder="First name"name="f_name" required>
    </div>
    <div class="form-group col-md-6">
    Lastname: <input type="text" class="form-control" placeholder="Last name"name="l_name" required>
    </div>
    
    <div class="form-group col-md-6">
 Contact Number:<input type="number" class="form-control" placeholder="Contact No"name="contact" required>
    </div>
<div class="form-group col-md-6">   Email:<input type="email" class="form-control" placeholder="Email"name="email_id" required>
    </div>
     <div class="form-group col-md-6">
              Gender:
         <input type="radio"  name="gender" value="Female" checked>
          <label>
			Female
          </label>
          <input type="radio" name="gender" value="Male">
          <label>
            Male
          </label>
  </div>

  <div class="form-group col-md-6">
    <label>Address</label>
    <input type="text" class="form-control" name="don_address" placeholder="Address" required>
  </div>
  <div class="form-group col-md-4">
      <label>State</label>
      <select class="form-control"name="state"required>
        <option selected>Gujarat</option>
        <option>Maharastra</option>
                <option>Rajesthan</option>
                <option>Uttar Pradesh</option>
                <option>Kerela</option>
                <option>Tamil Nadu</option>
                <option>West Bengak</option>
                <option>Bihar</option>
                <option>Punjab</option>
        
      </select>
      </div>
      <br>
   <div class="form-group col-md-6">
      <label>Zip</label>
      <input type="number" class="form-control" name="pincode"required>
    </div>      
   
   <div class="form-group col-md-6">
      <label>AddharNumber</label>
      <input type="number" class="form-control" name="a_no" required>
    </div>
    <div class="form-group col-md-4">
      <label><h3><b>Donation Details</b></h3><br>Choose Currency</label>
      <select class="form-control"name="Currency">
        <option selected>Yen</option>
        <option>Indian</option>
                <option>Usa</option>
                     </select>
      </div>
      <div class="form-group col-md-6">
      <label>Amount to be donated</label>
      <input type="number" class="form-control" name="Amount"required>
    </div>      
    <div class="form-group col-md-4">
      <label>Donation used for:</label>
      <select name="donation_used"class="form-control">
        <option selected>Educational Purpose</option>
        <option>Awareness Program</option>
        <option>Health care Programs</option>
        <option>All of the above</option>
                     </select>
      </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck"required>
      <label class="form-check-label" for="gridCheck" >
		I do not require tax receipt for this donation
      </label>
      <br><br><b><i>
      <label class="form-check-label" required>
      Thank you for your Donation!! when donation is successfull
      </label></i></b>
</div>
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>  </div>
</form>
            
            
            
        </form>
        </div>
            <%@ include file = "footer.html" %>
        
</body>
</html>