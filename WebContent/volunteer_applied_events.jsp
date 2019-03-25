<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applied</title>
</head>
<body>
<%@ include file = "header.html" %>
<!--volunteer_applied_events-->
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
                                                <p>{Volunteer/Team}</p>
                                                <p><a href="#">[Edit Profile]</a></p>
                                                <p><a href="#">Sign Out</a></p>
                                        </div>
                                </div>
                        </div>
                        <div class="col-md-9">
                            <div class="volunteer_applied_events">
                                <div class="profile_content">
                                        <div class="row">
                                                <p>Welcome {Name of the User} !!</p>
                                        </div> 
                                        <div class="row">
                                            <div class="event">
                                                <table>
                                                    <tr>
                                                        <th>Sr No.</th>
                                                        <th>Title/Name of the Event/Name of the School</th>
                                                        <th>Type of event/Type of Form filled</th>
                                                        <th>Applied Date</th>
                                                        <th></th>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td><td>Awaremess Program</td>
                                                        <td>Camp</td><td>1/2/2019</td>
                                                        <td>
                                                            <button><a href="#">View Details</a></button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td><td>Anand Vidhyalaya</td>
                                                        <td>Teacher</td><td>3/5/2019</td>
                                                        <td>
                                                                <button><a href="#">View Details</a></button>
                                                            </td>
                                                    </tr>

                                                </table>
                                                <p>Showing <b>2</b> events...</p>
                                            </div>
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