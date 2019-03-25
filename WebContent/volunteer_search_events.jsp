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

<h1>SEARCH OPPORTUNITIES</h1>
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
                            <div class="volunteer_search_events">
                                <div class="profile_content">
                                        <div class="row">
                                                <p>Welcome {Name of the User} !!</p>
                                        </div> 
                                        <div class="row">
                                            <div class="search_event">
                                                <form action="">
                                                    <p>Search By::</p>
                                                    Start Date:<input type="date" name="start_date">
                                                    End Date:<input type="date" name="end_date">
                                                    Location:<input type="text" name="location">
                                                    Keywords:<input type="text" name="keywords">
                                                    <button type="submit">Search Events</button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="event">
                                                    <table>
                                                            <tr>
                                                                <th>Sr No.</th>
                                                                <th>Title/School name</th>
                                                                <th>Start Date</th>
                                                                <th>End Date</th>
                                                                <th>Location</th>
                                                                <th></th>
                                                                <th></th>
                                                                <th></th>
                                                            </tr>
                                                            <tr>
                                                                <td>1</td><td>Anand Vidhyalaya</td>
                                                                <td>2/2/2019</td>
                                                                <td>4/5/2019</td>
                                                                <td>Vadodara</td>
                                                                <td><button>Read More</button></td>
                                                                <td><button>APPLY</button></td>
                                                                <td>on clicking on APPLY button show "Applied Successfully!"</td>
                                                            </tr>
                                                        </table>
                                                        <p>Showing <b>5</b> results...</p>
                                            </div>                                          
                                        </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
<%@ include file = "footer.html" %>


</form>
</body>
</html>