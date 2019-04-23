<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.Dbutil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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

<%
Connection c;
Dbutil d=new Dbutil();
c=d.gConnection();
HttpSession s=request.getSession();
String s1=(String)s.getAttribute("cid_test");

PreparedStatement p=c.prepareStatement("select * from volentier where vol_cid=?");
p.setString(1, s1);

ResultSet r=p.executeQuery();
while(r.next())
{


%>
<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3">
<div><h2>Login Details</h2></div> 
 <form action="Vol_Edit_profile" method="post">

     <div class="form-group">
      <label> Register as:</label>
      <input type="text" class="form-control" name="title" placeholder="Enter Activity Title" value="volentier" readonly>
    </div>
       <div class="form-group">
      <label>Username:</label>
      <input type="text" class="form-control" placeholder="Enter your name" name="username"value="<%=r.getString("username")  %>">
    </div>
    
     <div class="form-group">
      <label>Password:</label>
      <input type="password" class="form-control" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="ATLEAST: 8 characters,1 capital,1 small letter" id="myInput" name="password"value="<%=r.getString("PASSWORD")  %>">
      <br>
                  <button type="button" class="btn btn-outline-info" onclick="myFunction()">Show</button>
      
      </div>
     
            <div><h3>Contact Information</h3></div>
      <div class="form-group">
      <label>Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="volunteer_name"value="<%=r.getString("NAME") %>">
      </div>
      <div class="form-group">
      <label>Date of Birth:</label>
      <input type="date" class="form-control" required  name="date"value="<%=r.getString("dob")  %>">
      </div>
      <div class="form-group">
      <label>Gender:</label>
      <input type="radio" value="male" name="gen"value="<%=r.getString("gender") %>">Male  
      <input type="radio" value="female" name="gen" value="<%=r.getString("gender") %>">Female
      </div>
      <div class="form-group">
      <label>Address:</label>
      <textarea type="text" class="form-control" required placeholder="Enter address" rows="4" cols="20" name="address"value="<%=r.getString("address") %>"></textarea>
      </div>
               
      <div class="form-group">
      <label> City:</label>
      <input type="text" class="form-control" required placeholder="Enter city" name="city"value="<%=r.getString("city")  %>">
      </div>
	  <div class="form-group">
      <label> State:</label>
      <input type="text" class="form-control" required placeholder="Enter State" name="state"value="<%=r.getString("state")  %>">
      </div>
      <div class="form-group">
      <label> Pincode:</label>
      <input type="number" class="form-control" required placeholder="Enter pincode" name="pincode"value="<%=r.getString("pincode")  %>">
      </div>
	  <div class="form-group">
      <label>Contact:</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="contact"value="<%=r.getString("contact")  %>">
      </div>
       <div class="form-group">
      <label>Email Id:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="email"value="<%=r.getString("email")  %>" required>
    </div>
       <div class="form-group">
      <label>Profession:</label>
      <input type="radio" name="profession" value="school_tudent" value="<%=r.getString("profession")  %>">School Student
            <input type="radio" name="profession" value="college_student" value="<%=r.getString("profession")  %>">College Student
            <input type="radio" name="profession" value="home_maker" value="<%=r.getString("profession")  %>">Home Maker
            <input type="radio" name="profession" value="employee" value="<%=r.getString("profession")  %>">Employee
            Other:<input type="text" name="profession" value="<%=r.getString("profession")  %>">
            </div>
          
      <div class="form-group">
      <label> Addhar Number:</label>
      <input type="number" class="form-control" required placeholder="Enter  Addhar Number" name="Adhar" value="<%=r.getString("Adhar")  %>">
      </div>
             <div class="form-group">
                  <label>Upload Profile picture:</label>
            
      <div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" name="file"value="<%=r.getString("profile")  %>">
    <label class="custom-file-label">Upload Profile picture</label>
  </div>
  </div>
  </div>
      <div><h3>Volunteer Position Information</h3></div>
      <div class="form-group">
            <label> What skills can you contribute to the organization:</label>
      
      <div class="form-row">
      <div class="col">
      <label>Skill Name:</label><input type="text" class="form-control" required name="skill_name_1"  value="<%=r.getString("skill1")  %>">
      <label>Skill Name:</label><input type="text" class="form-control" required name="skill_name_2" value="<%=r.getString("skill2")  %>">
      <label>Skill Name:</label><input type="text" class="form-control" required name="skill_name_3" value="<%=r.getString("skill3")  %>">
      </div>     
       <div class="col">
      <label>Skill Proficiency out of 5:</label><input type="number" class="form-control" max="5" min="1" name="Skill_1"value="<%=r.getString("skill_prof1")  %>">
      <label>Skill Proficiency out of 5:</label><input type="number" class="form-control" max="5" min="1" name="Skill_2"value="<%=r.getString("skill_prof2")  %>">
     <label>Skill Proficiency out of 5:</label><input type="number" class="form-control" max="5" min="1" name="Skill_3"value="<%=r.getString("skill_prof3")  %>">
       </div>
      </div>
      </div>
      
      <div class="form-group">
      <label>What experience do you have in this area? Explain in detail:</label>
      <textarea type="text" class="form-control" required rows="4" cols="20" name="Exp" value="<%=r.getString("exper") %>"></textarea>
      </div>
      
      <div class="form-group">
      <label>Upload necessary Document/proof/certificate:</label>
      <div class="input-group">
  		<div class="custom-file">
    <input type="file" class="custom-file-input" name="certificate" value="<%=r.getString("document")  %>">
  </div>
 </div>
 </div>
    <div class="form-group">
      <label>What number of days will you be available ?</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="days"value="<%=r.getString("days")  %>">
      </div>
      <div class="form-group">
      <label>Start date:</label>
      <input type="date" class="form-control" required placeholder="Enter Course content" name="start_date"value="<%=r.getString("start_date")  %>" id="start_date">
      </div>  

<div class="form-group">
      <label>End date:</label>
      <input type="date" class="form-control" required  name="end_date"value="<%=r.getString("end_date")  %>" id="end_date"><br>
      </div>  
      <div class="form-group">
      <label>Services you wish to offer:</label>
            <input type="checkbox" name="service" value="teach"value="<%=r.getString("services")  %>">Teaching
            <input type="checkbox" name="service" value="Volunteer_help"value="<%=r.getString("services")  %>">Volunteer
            <input type="checkbox" name='service' value="donate"value="<%=r.getString("services")  %>">Donate
            <input type="text" class="form-control"name="service"value="<%=r.getString("services")  %>" >
    </div>
      <h3><div>Education/Work Experience</div></h3>
      <h5><div>10th Details</div></h5>
 	
 	<div class="form-group">
      <label>School Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="school_name"value="<%=r.getString("school_name")  %>">
      </div>  
      
      <div class="form-group">
      <label>State:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="school_state"value="<%=r.getString("scholl_state")  %>">
      </div>
      
      <div class="form-group">
      <label>Percentage gained:</label>
      <input type="number" class="form-control" required placeholder="Enter name" name="10_per"value="<%=r.getString("percentage")  %>">
      </div>
      
      <div class="form-group">
      <label>Pass-out Year:</label>
      <input type="text" class="form-control" required name="10_year"value="<%=r.getString("year")  %>">
      </div>
      
      
      
      <h5><div>12th Details</div></h5>
       <div class="form-group">
              <label>School Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="12school_name"value="<%=r.getString("h_inst_name")  %>">
      </div>  
      
      <div class="form-group">
      <label>State:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="12school_state"value="<%=r.getString("h_state")  %>">
      </div>
      
      <div class="form-group">
      <label>Percentage gained:</label>
      <input type="number" class="form-control" required placeholder="Enter name" name="12_per"value="<%=r.getString("h_perc")  %>">
      </div>
      
      <div class="form-group">
      <label>Pass-out Year:</label>
      <input type="text" class="form-control" required name="12_year"value="<%=r.getString("h_year")  %>">
      </div> 
            
	<h5><div>Higher Qualification Details</div></h5>
              <div class="form-group">
              <label>Institution Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="clgname"value="<%=r.getString("clgname")  %>">
      </div>  
      
      <div class="form-group">
      <label>State:</label>
      <input type="text" class="form-control" required placeholder="Enter state" name="clg_state"value="<%=r.getString("clg_state")  %>">
      </div>
      
      <div class="form-group">
      <label>Percentage gained:</label>
      <input type="number" class="form-control" required placeholder="Enter percentage" name="other_per"value="<%=r.getString("other_per")  %>">
      </div>
      
      <div class="form-group">
      <label>Pass-out Year:</label>
      <input type="text" class="form-control" required name="12_year"value="<%=r.getString("other_year")  %>">
      </div>             
     <div class="form-group">
                  <label>Upload certificate of highest Qualification:</label>
        <div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" name="other_certificate"value="<%=r.getString("other_certificate")  %>">
    <label class="custom-file-label">Upload certificate of highest Qualification:</label>
  </div>    
   </div>         
         </div>   
            
      <div class="form-group">
      <label>Where did you come to know about this organization?</label>
      <textarea type="text" class="form-control" required placeholder="Enter here" name="know" value="<%=r.getString("hoe_to_know")%>"></textarea>
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
          <%
        
}
        %>
       
     </form>
     </div>
     
     </div>
     </div>
 <%@ include file = "footer.html" %>
<!--  <form name="volunteer_form" action="Vol_Edit_profile.java" method="post" > -->
<!--         <div> -->
<!--             <div>Login Details</div> -->
<!--   			Register as:<input type="text" name="title" value="volentier" default><br><br> -->
<%--             Username:<input type="text" name="username" value="<%=r.getString("username")  %>"><br><br> --%>
<%--             Password:<input type="password" name="password" value="<%=r.getString("PASSWORD")  %>"><br><br> --%>

<!--             <div>Conatact Information</div> -->
            
<%--             Name:<input type="text" name="volunteer_name" value="<%=r.getString("NAME") %>" ><br> --%>
<%--             Date of Birth<input type="date"  name="date" value="<%=r.getString("dob")  %>"><br> --%>
<!--             Gender:<input type="radio" value="male" name="gen" >Male  -->
<!--             <input type="radio" value="female" name="gen" >Female<br> -->
<%--             Address:<input type="text"name="address" value="<%=r.getString("address") %>"><br> --%>
<%--             City:<input type="text" name="city"  value="<%=r.getString("city")  %>"><br> --%>
<%--             State:<input type="text" name="state"  value="<%=r.getString("state")  %>"><br> --%>
<%--             Pincode:<input type="number" name="pincode" value="<%=r.getString("pincode")  %>" ><br> --%>
<%--             Contact Number:<input type="number" name="contact"  value="<%=r.getString("contact")  %>"><br> --%>
<%--             Email Id:<input type="email" name="email"  value="<%=r.getString("email")  %>" ><br> --%>
<%--             Profession:<input type="radio" name="profession" value="<%=r.getString("profession")  %>" >School Student --%>
<!--             <input type="radio" name="profession" value="college_student">College Student -->
<!--             <input type="radio" name="profession" value="home_maker">Home Maker -->
<!--             <input type="radio" name="profession" value="employee">Employee -->
<%--             Other:<input type="text" name="profession"   value="<%=r.getString("profession")  %>"><br> --%>
<%--             Addhar Number:<input type="number" name="Adhar"  value="<%=r.getString("Adhar")  %>"><br> --%>
<%--             Uppload Profile picture:<input type="file" name="file"value="<%=r.getString("profile")  %>"><br> --%>
<!--             <br><br> -->
<!--             <div>Volunteer Position Information</div> -->
<!--             <br><br> -->
<!--             What skills can you contribute to the organization:<br> -->
<%--             1.Skill Name:<input type="text" name="skill_name_1" value="<%=r.getString("skill1")  %>"> --%>
<%--                     Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_1"value="<%=r.getString("skill_prof1")  %>"><br> --%>
<%--             2.Skill Name:<input type="text" name="skill_name_2" value="<%=r.getString("skill2")  %>"> --%>
<%--                     Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_2"value="<%=r.getString("skill_prof2")  %>"><br> --%>
<%--             3.Skill Name:<input type="text" name="skill_name_3" value="<%=r.getString("skill3")  %>"> --%>
<%--                     Skill Profeciency out of 5:<input type="number" max="5" min="1" name="Skill_3"value="<%=r.getString("skill_prof3")  %>"><br> --%>
<%--             What experience do you have in this area? Explain in detail:<textarea rows="5" cols="5" name="Exp"value="<%=r.getString("exper")  %>"></textarea> --%>
<%--             Upload necessary Document/proof/certificate"<input type="file" name="certificate"value="<%=r.getString("document")  %>"><br> --%>
<%--             What number of days will you be available?<input type="number" name="days" value="<%=r.getString("days")  %>"><br> --%>
<%--             Start date:<input type="date" name="start_date"value="<%=r.getString("start_date")  %>">  --%>
<%--             End Date:<input type="date" name="end_date"value="<%=r.getString("end_date")  %>"><br> --%>
<!--             Services you wish to offer: -->
<%--             <input type="checkbox" name="service" value="teach"value="<%=r.getString("service")  %>">Teaching --%>
<%--             <input type="checkbox" name="service" value="Volunteer_help"value="<%=r.getString("service")  %>">Volunteer_help --%>
<%--             <input type="checkbox" name='service' value="donate"value="<%=r.getString("service")  %>">Donate --%>
<%--             <input type="text" name="service" value="<%=r.getString("service")  %>"><br> --%>
            
<!--             <div>Education/Work Experience</div> -->
            
<!--             10th Details<br> -->
<%--             School Name:<input type="text" name="school_name"value="<%=r.getString("school_name")  %>" > --%>
<%--             State:<input type="text" name="school_state" value="<%=r.getString("scholl_state")  %>"><br> --%>
<%--             Percentage gained:<input type="number" name="10_per" value="<%=r.getString("percentage")  %>">%<br> --%>
<%--             Pass-out Year:<input type="date" name="10_year"value="<%=r.getString("year")  %>"><br> --%>
           
<!--             12th Details:<br> -->
<%--             School Name:<input type="text" name="12school_name" value="<%=r.getString("h_inst_name")  %>"> --%>
<%--             State:<input type="text" name="12school_state" value="<%=r.getString("h_state")  %>"><br> --%>
<%--             Percentage gained:<input type="number" name="12_per"value="<%=r.getString("h_perc")  %>" >%<br> --%>
<%--             Pass-out Year:<input type="date" name="12_year"value="<%=r.getString("h_year")  %>"><br> --%>
            
<!--             Higher Qualification Details: -->
<%--             Institution Name:<input type="text" name="clgname"value="<%=r.getString("clgname")  %>"> --%>
<%--             State:<input type="text" name="clg_state" value="<%=r.getString("clg_state")  %>"><br> --%>
<%--             Percentage gained:<input type="number" name="other_per" value="<%=r.getString("other_per")  %>">%<br> --%>
<%--             Pass-out Year:<input type="date" name="other_year"value="<%=r.getString("other_year")  %>"><br> --%>
<%--             Upload certificate of highest Qualification:<input type="file" name="other_certificate"value="<%=r.getString("other_certificate")  %>"> --%>
<!--             <br><br> -->
<%--             Where did you come to know about this organization?<input type="text" name="know"value="<%=r.getString("hoe_to_know")  %>"><br> --%>
<!--             <input type="checkbox" name="agree" >I agree with all the terms and conditions.<br> -->

<!--             <input type="submit" name="submit" value="Register"><input type="reset" name="reset" value="reset"> -->
<!--             <br><br> -->
<!--             *All applicants must answer all pf the following questions. Failure to answer honestly -->
<!--             will disqualify the applicant from the service as a volunteer with our organization. -->
<!--         </div> -->
<!--         </form> -->
        
   
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