
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
<title>Search</title>
</head>
<body>
<%@ include file = "header.html" %>
<div class="profile">
                <div class="container-fluid">
                        <div class="row">
                                <div class="col-md-3">
                                        <div class="profile_col">
                                                <div class="profile_img">
                                                   <%
                                                
                                                Dbutil d=new Dbutil();
                                                Connection c;
                                                c=d.gConnection();
                                                HttpSession s=request.getSession();
                                           String cid_test=(String)     s.getAttribute("cid_test");
                                                PreparedStatement ps=c.prepareStatement("select profile from volentier where vol_cid=?");
                                                ps.setString(1,cid_test);
                                             ResultSet r=  ps.executeQuery();
                                               System.out.println(cid_test);
                                             while(r.next())
                                             {
                                             %>
                                                
                                                        <img src="volentier/<%=r.getString("profile") %>" alt="" class="img-responsive"/>
                                                <%
                                             }
                                                %>
                                                                                        </div>
                                                <div class="profile_text">
<p class="list-group-item list-group-item-action"> ${uname}</p>
  <p class="list-group-item list-group-item-action">Volunteer</p>
  <a href="volunteer_updatehome.jsp" class="list-group-item list-group-item-action">Edit Profile</a>
  <a href="logout" class="list-group-item list-group-item-action">Sign Out</a>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="col-md-9">
                        <div class="row">
                        <h3>Search Oppertunities</h3>
                        </div>
                            <div class="volunteer_search_events">
                                <div class="profile_content">
                                        <div class="search_event">
                                            <form class="form-inline" action="view_result.jsp">
												  <label for="email" class="mr-sm-2">Start Date:</label>
												  <input type="date" class="form-control mb-2 mr-sm-2" name="start_date" id="start_date">
												  <label for="pwd" class="mr-sm-2">End Date:</label>
											  <input type="date" class="form-control mb-2 mr-sm-2" name="end_date" id="end_date">
												  
												  <label for="pwd" class="mr-sm-2">Search:</label>
												  <select class="form-control mb-2 mr-sm-2" name="search"><option value="camp">Camp</option><option value="teacher">Teacher</option><option value="volentier_others">Volunteer</option></select>
												  <button type="submit" class="btn btn-warning mb-2">Search Events</button>
												</form>
                                                
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