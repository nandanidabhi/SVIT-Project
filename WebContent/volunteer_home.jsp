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
                                                
                                                        <img src="volentier/<%=r.getString("profile") %>" alt="" class="img-responsive" height=200px/>
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
                                        <div class="profile_content">
                                                 
                                                <div class="row">
                                                        <div class="option">
                                                        <center>
                                                            <form >
                                                           <h3><div>Volunteer</div></h3><br>
                                                            <button type="button" class="btn btn-warning"><a href="volunteer_applied_events.jsp">Applied Events</a></button>
                                                            <button type="button" class="btn btn-warning"><a href="volunteer_search_events.jsp">Search Events</a></button>
                                                            
                                                            </form>
                                                            </center>
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