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
        <h4>Donation Form</h4>
            <p>Donar's Details:</p>
            <p>    User Name:<input type="text" name="username" required>  </p>
               <p>  Password:<input type="password" name="password" required></p> 
            <p>First Name:<input type="text" name="f_name" required>  </p>
            <p>Last Name:<input type="text" name="l_name" required></p>
            <p>Contact Number:<input type="text"  name="contact" required></p>
           <p> Email Id:<input type="email" name="email_id" required></p>
            <p>Gender:<input type="radio" name="gender">Male <input type="radio" name="gender">Female</p>
            <p>Address:<textarea row=10 cols="10" required name="don_address"></textarea></p>
            <p>State:<input type="text" name="state" required></p>
           <p> Pincode:<input type="number" required name="pincode"></p>
            <p>Addhar Number:<input type="number" name="a_no"></p>
            <hr>
            Donation Details:
            Choose Currency:<select name="Currency" required >
                <option value=INR>Indian Rupees</option>
                <option value="Yen">Yen</option>
                <option value="US Dollar">US Dollar</option>
            </select>
            Amount to be donated:<input type="number" required name="Amount"> <br>
            Donation should be used for:<select name="donation_used" required>
                <option value="Education_program">Educational Programs</option>
                <option value="Awareness_program">Awareness Programs</option>
                <option value="Healtcare">Healthcare Programs</option>
                <option value="any">Any of the above</option>
                </select>
            <hr>
            
            <p><input type="checkbox" name="agree" required>I do not require tax receipt for this donation</p>

           <p> <button type="submit" name="submit">Donate</button></p>

            <div>
                Thank you for your Donation!! when donation is successfull
            </div>
            </select> 
        </form>
        </div>
            <%@ include file = "footer.html" %>
        
</body>
</html>