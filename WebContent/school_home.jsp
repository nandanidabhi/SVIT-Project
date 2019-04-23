<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Home</title>
</head>
<body>
<%@ include file="header.html" %>
<div class="profile"> 
                <div class="container-fluid">
                        <div class="row">
                        
                                <div class="col-md-3">
                                        <div class="profile_col">
                                                <div class="profile_img">
<!--                                                         <img src="images/pic1.jpg" alt="" class="img-responsive"/> -->
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
                                        <div class="profile_content">
                                                 
                                                <div class="row">
                                                        <div class="option">
                                                        <center>
                                                            <form >
                                                            <div class="form-group">
                                                           <h3><div>Create Event</div></h3><br>
                                                            <button type="button" class="btn btn-warning"><a href="post_teacherform.jsp">Teacher-Form</a></button>
                                                            <button type="button" class="btn btn-warning"><a href="camp_form.jsp">Camp-Form</a></button>
                                                           <button type="button" class="btn btn-warning"><a href="post_volunteerform.jsp">Volunteer-Form</a></button>
                                                            <br>
                                                            </div>
                                                            <div class="form-group">
                                                            <h3><div>Responses</div></h3><br>
                                                           <button type="button" class="btn btn-warning"><a href="test1.jsp">View Responses on events and View your Posted events/Filled POST-Forms</a></button>
                                                           <br>  
                                                           </div>
                                                           <div class="form-group">
                                                           <h3><div>Search Volunteers</div></h3><br>
                                                           <button type="button" class="btn btn-warning"><a href="school_search_vol.jsp">Search Volunteers  </a></button>
                                                           <br>  
                                                            </div>
                                                            </form>
                                                            </center>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>                
<br>   
                                
                                                                
                                              


<%@ include file="footer.html" %>
</body>
</html>