
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
<title>Volunteer Deatils</title>
</head>
<body>
<%@ include file="header.html" %>
<div class="profile">
            <div class="container-fluid">
                <div class="row">
                
                        <div class="col-md-3">
                                <div class="profile_col">
                                        <div class="profile_img">
<!--                                                 <img src="images/pic1.jpg" alt="" class="img-responsive"/> -->
                                        </div>
                                        <div class="profile_text">
                                                <div class="list-group">
  <a href="school_home.jsp" class="list-group-item list-group-item-action">${uname}</a>
<%--   <a href="#" class="list-group-item list-group-item-action">${schname}</a> --%>
  <a href="school_update.jsp" class="list-group-item list-group-item-action">Edit Profile</a>
  <a href="logout" class="list-group-item list-group-item-action">Sign Out</a>
                                        </div>
                                </div>
                        </div>
                        </div>
                        
							<div class="col-md-9">
                            <div class="volunteer_search_events">
                                <div class="profile_content">
                                        <div class="profile_text">
                                        <label class="mr-sm-14"><b>Volunteer Search</b></label>
<%

String id=request.getParameter("id");
Connection c;
Dbutil d=new Dbutil();
c=d.gConnection();
PreparedStatement ps=c.prepareStatement("select * from volentier where id=?");
ps.setInt(1, Integer.parseInt(id));

 ResultSet r=  ps.executeQuery();
 %>
 <div style="overflow-x:auto;">
 <table class="table table-condensed" >
 <% while(r.next())
 {
	 %>
 <tr><th>Name</th><td><%=r.getString("NAME") %></td></tr>
  <tr><th>Profile</th><td><img src="volentier/<%=r.getString("profile") %>" class="img-responsive" height=200px/></td></tr>
 <tr><th>Date of Birth</th><td><%=r.getString("dob") %></td></tr>
 <tr><th>Gender</th><td><%=r.getString("gender") %></td></tr>
 <tr><th>Address</th><td><%=r.getString("address") %></td></tr>
 <tr><th>City</th><td><%=r.getString("city") %></td></tr>
 <tr><th>State</th><td><%=r.getString("state") %></td></tr>
 <tr><th>Contact</th><td><%=r.getString("pincode") %></td></tr>
 <tr><th>Email</th><td><%=r.getString("email") %></td></tr>
  <tr><th>Profession</th><td><%=r.getString("profession") %></td></tr>
  <tr><th>Adhar Number</th><td><%=r.getString("ADHAR") %></td></tr>
  <tr><th>Skill : Rating</th><td><%=r.getString("skill1") %> : <%=r.getString("skill_prof1") %></td></tr>
  <tr><th>Skill : Rating</th><td><%=r.getString("skill2") %> : <%=r.getString("skill_prof2") %></td></tr>
  <tr><th>Skill : Rating</th><td><%=r.getString("skill3") %> : <%=r.getString("skill_prof3") %></td></tr>
  <tr><th>Experience</th><td><%=r.getString("exper") %></td></tr>
  <tr><th>Days To work</th><td><%=r.getString("days") %></td></tr>
  <tr><th>Services</th><td><%=r.getString("services") %></td></tr>
  <tr><th>School Name</th><td><%=r.getString("school_name") %></td></tr>
  <tr><th>School State</th><td><%=r.getString("scholl_state") %></td></tr>
  <tr><th>School Percentage</th><td><%=r.getString("percentage") %></td></tr>
  <tr><th>School Pass Out</th><td><%=r.getString("year") %></td></tr>
  <tr><th>HighSchool Name</th><td><%=r.getString("h_inst_name") %></td></tr>
  <tr><th>HighSchool State</th><td><%=r.getString("h_state") %></td></tr>
  <tr><th>HighSchool Percentage</th><td><%=r.getString("h_perc") %></td></tr>
  <tr><th>HighSchool Pass Out</th><td><%=r.getString("h_year") %></td></tr>
  <tr><th>College Name</th><td><%=r.getString("clgname") %></td></tr>
  <tr><th>College State</th><td><%=r.getString("clg_state") %></td></tr>
  <tr><th>College Percentage</th><td><%=r.getString("other_per") %></td></tr>
  <tr><th>College Pass Out</th><td><%=r.getString("other_year") %></td></tr>
   <tr><th>Start Date</th><td><%=r.getString("start_date") %></td></tr>
   <tr><th>End Date</th><td><%=r.getString("end_date") %></td></tr>
 
 
 
</table>
</div>
<%

}

%>

<button class="btn btn-warning"><a href="school_search_vol.jsp">Back</a></button>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
<%@ include file="footer.html" %>

</body>
</html>