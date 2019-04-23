
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.Dbutil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Update</title>
</head>
<body>
<%@ include file = "header.html" %>
<%


HttpSession s=request.getSession();
String d=	(String)s.getAttribute("cid_test");


Dbutil d1=new Dbutil();
Connection c;
c=d1.gConnection();
PreparedStatement ps=c.prepareStatement("select * from school where SCH_CID=?");
ps.setString(1, d);
ResultSet r=  ps.executeQuery();
while(r.next())
{
%>

<div class="container">
<div class="row"> 
<div class="col-lg-6 offset-3"> 
<h2>School Form</h2>
 <form  action="School_prf_edit" method="post">

                <div>Login Details</div>
                 <div class="form-group">
      <label>Title:</label>
      <input type="text" class="form-control" value="school" name="title" readonly>
    </div>
    
    <div class="form-group">
      <label>Username:</label>
      <input type="text" class="form-control" placeholder="Enter your name" name="username" value="<%=r.getString("username")%>">
    </div>

  <div class="form-group">
      <label>Password:</label>
      <input type="password" class="form-control" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="ATLEAST: 8 characters,1 capital,1 small letter" name="password" value="<%=r.getString("password")%>" id="myInput"><br>
            <button type="button" class="btn btn-outline-info" onclick="myFunction()">Show</button>
      
      </div>        
            <div>School Information</div>
            
            
     <div class="form-group">
      <label>School Name:</label>
      <input type="text" class="form-control" required placeholder="Enter name" name="school_name" value="<%=r.getString("school_name")%>">
      </div>
      <div class="form-group">
      <label>Registration Number:</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="registration_no" value="<%=r.getString("register_no")%>">
      </div>
      
       <div class="form-group">
      <label>Contact:</label>
      <input type="number" class="form-control" required placeholder="Enter number" name="school_contact" pattern="[789][0-9]{9}" value="<%=r.getString("school_contact")%>">
      </div>
      
        <div class="form-group">
      <label>Address:</label>
      <textarea type="text" class="form-control" required placeholder="Enter address" rows="4" cols="20" name="sch_address" value="<%=r.getString("address")%>"></textarea>
      </div>
      
      <div class="form-group">
      <label> City/Taluka:</label>
      <input type="text" class="form-control" required placeholder="Enter city" name="sch_city" value="<%=r.getString("city")%>"/>
      </div>
      
      <div class="form-group">
      <label> State:</label>
      <select class="form-control" required name="sch_state" placeholder="<%=r.getString("state")%>" >
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
      <input type="number" class="form-control" required placeholder="Enter pincode" name="sch_pincode" maxlength="6" value="<%=r.getString("pincode")%>"/>
      </div>
      <div class="form-group">
      <label> Medium of Teaching:</label>
      <input type="text" class="form-control" required placeholder="Enter Teaching medium" name="sch_med" value="<%=r.getString("medium")%>"/>
      </div>
      
      <div class="form-group">
      <label>Board:</label>
      <select required name="sch_board" class="form-control" value="<%=r.getString("board")%>">
      
                     <option value="private" >Private</option>
                <option value="Government">Government</option>
                <br>
            </select>
      </div>
      
      
           <div class="form-group">
      <label>Type of School:</label>
          <select required name = "sch_type" class="form-control" value="<%=r.getString("type_of_school")%>">
                <option value="girl" >Girls School</option>
                <option value="boy">Boys School</option>
                <option value="co_ed">Co-ed School</option>
            </select>
            </div>
            <div class="form-group">
      <label> Total Number of students in school:</label>
      <textarea type="number" class="form-control" required placeholder="Enter Total Number of students in school"  name="number_of_students" value="<%=r.getString("no_students")%>"/></textarea><br>
      </div>
      <div class="form-group">
      <label>Highest Standard of Education:</label>
      <input type="number" class="form-control" placeholder="Enter Highest Standard of Education" name="highest_education" maxlength="12" value="<%=r.getString("high_education")%>" required>
    </div>
      <div class="form-group">
      <label> Website of School:</label>
      <input type="url" class="form-control" placeholder="Enter website" name="website" value="<%=r.getString("website")%>" required>
    </div>
       <div class="form-group">
      <label>Email Id:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="email_school" value="<%=r.getString("email_school")%>" required>
    </div>
       <div class="form-group">
      <label>Interested in:</label>
      <select value="camps" name="interested" value="<%=r.getString("interested")%>">
            <option value="camps">camps
            <option value="donation">donation
            <option value="teaching">Teaching<br>
			</select>
    </div>
      <div>Contact Person information</div>
            <div class="form-group">
      <label>Name:</label>
      <input type="text" class="form-control" placeholder="Enter Name" name="sch_cnt_name" value="<%=r.getString("sch_cnt_name")%>" required>
    </div>
	<div class="form-group">
      <label>Designation:</label>
      <input type="text" class="form-control" placeholder="Enter designation" name="sch_cnt_designation" value="<%=r.getString("sch_cnt_designation")%>" required>
    </div>
            <div class="form-group">
      <label>Contact:</label>
      <input type="number" class="form-control" placeholder="Enter contact" name="sch_cnt_contact" pattern="[789][0-9]{9}" value="<%=r.getString("sch_cnt_contact")%>" required>
    </div>
            <div class="form-group">
      <label>Email Id:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="sch_cnt_email" value="<%=r.getString("sch_cnt_email")%>" required>
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



<!--                 <div>Login Details</div> -->
<!--             Title<input type="text" value="school" name="title"> -->
<%--                 Username:<input type="text" name="username" value="<%=r.getString(2)%>"><br> --%>
<%--                 Password:<input type="password" name="password" value="<%=r.getString(3)%>"><br> --%>
    
<!--             <div>School Information</div> -->
<%--             School Name:<input type="text" name="school_name" value="<%=r.getString(4)%>"required><br> --%>
<%--             Registration Number:<input type="number" name="registration_no" required value="<%=r.getString(5)%>"><br> --%>
<%--             Contact:<input type="number" name="school_contact" maxlength="10" value="<%=r.getString(6)%>"><br> --%>
<%--             Address:<textarea name="sch_address" rows="4" cols="20" value="<%=r.getString(7)%>" required></textarea><br> --%>
<%--             City/Taluka:<input type="text" name="sch_city" value="<%=r.getString(8)%>" required><br> --%>
<%--             State:<input type="text" name="sch_state" required value="<%=r.getString(9)%>"><br> --%>
<%--             Pincode:<input type="number" name="sch_pincode" required value="<%=r.getString(10)%>"><br> --%>
<%--             Medium of Teaching:<input type="text" name="sch_med" required value="<%=r.getString(11)%>"><br> --%>
<%--             Board:<select required name="sch_board" value="<%=r.getString(12)%>"> --%>
<!--                 <option value="private" >Private</option> -->
<!--                 <option value="Government">Government</option> -->
<!--                 <br> -->
<!--             </select> -->
<%--             Type of School:<select required name = "sch_type" value="<%=r.getString(13)%>"> --%>
<!--                 <option value="girl" >Girls School</option> -->
<!--                 <option value="boy">Boys School</option> -->
<!--                 <option value="co_ed">Co-ed School</option> -->
<!--             </select> -->
<%--             Total Number of students in school:<input type="number" name="number_of_students" value="<%=r.getString(14)%>" required><br> --%>
<%--             Highest Standard of Education"<input type="number" name="highest_education" required value="<%=r.getString(15)%>"><br> --%>
<%--             Website of School:<input type="url" name="website" value="<%=r.getString(16)%>"><br> --%>
<%--             Email Id:<input type="email" name="email_school" value="<%=r.getString(17)%>"><br> --%>
            
<%--             Interested in:<select value="camps" name="interested" value="<%=r.getString(18)%>"> --%>
<!--             <option value="camps">camps -->
<!--             <option value="donation">donation -->
<!--             <option value="teaching">Teaching<br> -->
<!-- 			</select> -->
			
<!--             <div>Contact Person information</div> -->
<%--             Name:<input type="text" name="sch_cnt_name"required value="<%=r.getString(19)%>"><br> --%>
<%--             Designation<input type="text" name="sch_cnt_designation" required value="<%=r.getString(20)%>"><br> --%>
<%--             Contact:<input type="number" name="sch_cnt_contact" maxlength="10" required value="<%=r.getString(21)%>"><br> --%>
<%--             Email Id:<input type="email" name="sch_cnt_email" required value="<%=r.getString(22)%>"><br> --%>

<!--             <input type="checkbox" name="agree" required>I on the behalf of the school/institution agree to  -->
<!--             truthfully fill the form details.I agree to all the terms and conditions as mentioned. -->
<!--             <br><br> -->
<!--             <input type="submit" value="updateSchooldata"><input type="reset" value="reset">  -->
<!--   </form> -->
        <%
        
}
        %>
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