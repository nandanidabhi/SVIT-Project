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
                                                        <img src="images/pic1.jpg" alt="" class="img-responsive"/>
                                                </div>
                                                <div class="profile_text">
                                                        <p>{Name of User}</p>
                                                        <p>{School}</p>
                                                        <p><a href="#">[Edit Profile]</a></p>
                                                        <p><a href="#">Sign Out</a></p>
                                                </div>
                                        </div>
                                </div>
                                <div class="col-md-9">
                                        <div class="profile_content">
                                                <div class="row">
                                                        <p>Welcome {Name of the User} !!</p>
                                                </div>  
                                                <div class="row">
                                                        <div class="option">
                                                            <form action="">
                                                                    <p>Create Event</p>
                                                                    <p></p><a href="post_teacherform.jsp">Teacher-Form</a></p>
                                                                    <p><a href="camp_form.jsp">Camp-Form</a></p>
                                                                    <p><a href="post_volunteerform.jsp">Volunteer-Form</a></p>
                                                                    <p>OR</p>
                                                                    <p><a href="school_responses.jsp">View Responses on events
                                                                        and View your Posted events/Filled POST-Forms
                                                                    </a></p>
                                                                    <p>OR</p>
                                                                    <p><a href="school_search_volunteer.jsp">Search Volunteers</a></p>
                                                            </form>
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