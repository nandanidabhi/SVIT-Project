
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
<title>Volunteer search</title>
</head>
<body>
<%@ include file = "header.html" %>
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
                                                <div class="list-group">
                                                <form action="school_search_vol.jsp" class="form-inline">
												  <label for="email" class="mr-sm-2">Start Date::</label>
												  <input type="date" class="form-control mb-2 mr-sm-2" name="start_date" id="start_date">
												  <label for="pwd" class="mr-sm-2">End Date:</label>
											  <input type="date" class="form-control mb-2 mr-sm-2" name="end_date" id="end_date">
											  <label for="pwd" class="mr-sm-2">Location:</label>
											  <input type="text" class="form-control mb-2 mr-sm-2" name="location">
											  
												  <button type="submit" class="btn btn-warning mb-2">Search Volunteers</button>
                                                </form>
                                            </div>
                                        </div>
                                        
                                        <%
                                        
                                        Dbutil db=new Dbutil();
                                        Connection c;
                                        c=db.gConnection();
                                        String sd=request.getParameter("start_date");
                                        String end_date=request.getParameter("end_date");
                                        String location=request.getParameter("location");
                                        System.out.println(sd+" "+end_date+" "+location);
                                        PreparedStatement psmt=c.prepareStatement("select * from volentier where start_date BETWEEN ? and ? and city=?");
                                        psmt.setString(1, sd);
                                        psmt.setString(2,end_date);
                                        psmt.setString(3, location);
                                        
                                      ResultSet r=   psmt.executeQuery();
                                      int count=0;
                                      if(r!=null)
                                      {
                                      %>
                                      
                                        <div class="row">
                                        
                                            <div class="event">
                                               
                                      <table class="table table-condensed">
                                      <tr><th><b>Volunteer Details</b></th></tr>
                                      <tr>
                                          <th>Sr No.</th>
                                          <th>Volunteer name</th>
                                          <th>Start Date</th>
                                          <th>End Date</th>
                                          <th>Location</th>
                                          <td></td>                                                                
                                      </tr>
                                      
                                       
                                        <% 
                                        while(r.next())
                                        {
                                        count++;
                                        
                                        %> 
                                     
                                        <tr>
                                        
                                        
                                            <td><%=count %></td><td><%=r.getString("username") %></td>
                                            <td><%=r.getString("start_date") %></td>
                                            <td><%=r.getString("end_date") %></td>
                                            <td><%=r.getString("city") %></td>
                                            <td><button class="btn btn-warning"><a href="view_volen_det.jsp?id=<%=r.getInt("id")%>">View Volentier details</a></button></td>
                                        </tr>
                                        <%
                                        
                                        }
                                        %>
                                                            
                                                        </table>
                                                        
                                                        <p>Showing <b></b> <%=count %>results...</p>
                                       <%} %>               
                                            </div>                                          
                                        </div>
                                        
                                        
                                        
                                          
                                </div>
                            </div>
                       
                </div>
            </div>
        </div>
</div>
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
</body>
</html>