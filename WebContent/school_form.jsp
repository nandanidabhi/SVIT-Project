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
 <form  action="School_reg" method="post">

                <div>Login Details</div>
            
                Username:<input type="text" name="username"><br>
                Password:<input type="password" name="password"><br>
    
            <div>School Information</div>
            School Name:<input type="text" name="school_name" required><br>
            Registration Number:<input type="number" name="registration_no" required><br>
            Contact:<input type="tel" name="school_contact"><br>
            Address:<textarea name="sch_address" rows="4" cols="20" required></textarea><br>
            City/Taluka:<input type="text" name="sch_city" required><br>
            State:<input type="text" name="sch_state" required><br>
            Pincode:<input type="number" name="sch_pincode" required><br>
            Medium of Teaching:<input type="text" name="sch_med" required><br>
            Board:<select required name="sch_board">
                <option value="private" >Private</option>
                <option value="Government">Government</option>
                <br>
            </select>
            Type of School:<select required name = "sch_type">
                <option value="girl" >Girls School</option>
                <option value="boy">Boys School</option>
                <option value="co_ed">Co-ed School</option>
            </select>
            Total Number of students in school:<input type="number" name="number_of_students" required><br>
            Highest Standard of Education"<input type="number" name="highest_education" required><br>
            Website of School:<input type="url" name="website"><br>
            Email Id:<input type="email" name="email_school"><br>
            
            Interested in:<select value="camps" name="interested">
            <option value="camps">camps
            <option value="donation">donation
            <option value="teaching">Teaching<br>
			</select>
			
            <div>Contact Person information</div>
            Name:<input type="text" name="sch_cnt_name"required><br>
            Designation<input type="text" name="sch_cnt_designation" required><br>
            Contact:<input type="number" name="sch_cnt_contact" required><br>
            Email Id:<input type="email" name="sch_cnt_email" required><br>

            <input type="checkbox" name="agree" required>I on the behalf of the school/institution agree to 
            truthfully fill the form details.I agree to all the terms and conditions as mentioned.
            <br><br>
            <input type="submit" value="Register School"><input type="reset" value="reset"> 

        </form>
</body>
</html>