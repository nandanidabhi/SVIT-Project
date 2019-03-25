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

 <form name="volunteer_form" action="vol_reg" method="post" enctype="multipart/form-data">
        <div>
            <div>Login Details</div>
   Register as:<input type="text" name="title" value="volentier"><br><br>
            Username:<input type="text" name="username"><br><br>
            Password:<input type="password" name="password"><br><br>

            <div>Conatact Information</div>
            
            Name:<input type="text" name="volunteer_name" required><br>
            Date of Birth<input type="date" required name="date"><br>
            Gender:<input type="radio" value="male" name="gen">Male 
            <input type="radio" value="female" name="gen" required>Female<br>
            Address:<input type="text"name="address" required><br>
            City:<input type="text" name="city" required><br>
            State:<input type="text" name="state" required><br>
            Pincode:<input type="number" name="pincode" required><br>
            Contact Number:<input type="number" name="contact" required><br>
            Email Id:<input type="email" name="email" required><br>
            Profession:<input type="radio" name="profession" value="school_tudent">School Student
            <input type="radio" name="profession" value="college_student">College Student
            <input type="radio" name="profession" value="home_maker">Home Maker
            <input type="radio" name="profession" value="employee">Employee
            Other:<input type="text" name="profession" ><br>
            Addhar Number:<input type="number" name="Adhar"><br>
            Uppload Profile picture:<input type="file" name="file"><br>
            <br><br>
            <div>Volunteer Position Information</div>
            <br><br>
            What skills can you contribute to the organization:<br>
            1.Skill Name:<input type="text" name="skill_name_1" >
                    Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_1"><br>
            2.Skill Name:<input type="text" name="skill_name_2" >
                    Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_2"><br>
            3.Skill Name:<input type="text" name="skill_name_3" >
                    Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_3"><br>
            What experience do you have in this area? Explain in detail:<textarea rows="5" cols="5" name="Exp"></textarea>
            Upload necessary Document/proof/certificate"<input type="file" name="certificate"><br>
            What number of days will you be available?<input type="number" name="days" required><br>
            Start date:<input type="date" name="start_date"> 
            End Date:<input type="date" name="end_date"><br>
            Services you wish to offer:
            <input type="checkbox" name="service" value="teach">Teaching
            <input type="checkbox" name="service" value="Volunteer_help">Volunteer Volunteer_help
            <input type="checkbox" name='service' value="donate">Donate
            <input type="text" name="service" ><br>
            
            <div>Education/Work Experience</div>
            
            10th Details<br>
            School Name:<input type="text" name="school_name" required>
            State:<input type="text" name="school_state" required><br>
            Percentage gained:<input type="number" name="10_per" required>%<br>
            Pass-out Year:<input type="date" name="10_year"><br>
           
            12th Details:<br>
            School Name:<input type="text" name="12school_name" required>
            State:<input type="text" name="12school_state" required><br>
            Percentage gained:<input type="number" name="12_per" required>%<br>
            Pass-out Year:<input type="date" name="12_year"><br>
            
            Higher Qualification Details:
            Institution Name:<input type="text" name="clgname">
            State:<input type="text" name="clg_state" required><br>
            Percentage gained:<input type="number" name="other_per" required>%<br>
            Pass-out Year:<input type="date" name="other_year"><br>
            Upload certificate of highest Qualification:<input type="file" name="other_certificate">
            <br><br>
            Where did you come to know about this organization?<input type="text" name="know"><br>
            <input type="checkbox" name="agree" required>I agree with all the terms and conditions.<br>

            <input type="submit" name="submit" value="Register"><input type="reset" name="reset" value="reset">
            <br><br>
            *All applicants must answer all pf the following questions. Failure to answer honestly
            will disqualify the applicant from the service as a volunteer with our organization.
        </div>
        </form>
        <%@ include file = "footer.html" %>
        
</body>
</html>