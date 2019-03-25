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
<title>Activities</title>
</head>
<body>
<%@ include file = "header.html" %>
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
                                                                    <p>Volunteer</p>
                                                                    <p></p><a href="volunteer_applied_events.jsp">Applied Events</a></p>
                                                                    <p><a href="volunteer_search_events.jsp">Search Events</a></p>
                                                                                                                                </form>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>


<%@ include file = "footer.html" %>
</body>
</html>