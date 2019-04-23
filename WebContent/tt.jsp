
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
<title>Insert title here</title>
</head>
<body>

<%
Connection c;
Dbutil db=new Dbutil();
c=db.gConnection();
PreparedStatement ps=c.prepareStatement("select count(id) from volentier");
PreparedStatement ps1=c.prepareStatement("select count(id) from school");
PreparedStatement ps2=c.prepareStatement("select count(id) from contact");
PreparedStatement ps3=c.prepareStatement("select count(id) from donation");
PreparedStatement ps4=c.prepareStatement("select count(id) from activity_list_teacher");
PreparedStatement ps5=c.prepareStatement("select count(id) from activity_list_camp");
PreparedStatement ps6=c.prepareStatement("select count(id) from activity_list_v_other");
PreparedStatement ps7=c.prepareStatement("select count(id) from event_part_application");
PreparedStatement ps8=c.prepareStatement("SELECT COUNT(id) FROM event_part_application WHERE par_id LIKE 'vo%' AND act_id LIKE 'T%'");
PreparedStatement ps9=c.prepareStatement("SELECT COUNT(id) FROM event_part_application WHERE par_id LIKE 'vo%' AND act_id LIKE 'CMP%'");
PreparedStatement ps10=c.prepareStatement("SELECT COUNT(volentier.id) FROM event_part_application RIGHT JOIN volentier ON event_part_application.par_id=volentier.vol_cid WHERE event_part_application.id IS NULL");
PreparedStatement ps11=c.prepareStatement("SELECT DISTINCT(par_id) FROM event_part_application");
PreparedStatement ps12=c.prepareStatement("SELECT COUNT(id),par_id FROM event_part_application GROUP BY par_id");

 ResultSet r=  ps.executeQuery();
 ResultSet r1=  ps1.executeQuery();
 ResultSet r2=  ps2.executeQuery();
 ResultSet r3=  ps3.executeQuery();
 ResultSet r4=  ps4.executeQuery();
 ResultSet r5=  ps5.executeQuery();
 ResultSet r6=  ps6.executeQuery();
 ResultSet r7=  ps7.executeQuery();
 ResultSet r8=  ps8.executeQuery();
 ResultSet r9=  ps9.executeQuery();
 ResultSet r10=  ps10.executeQuery();
 ResultSet r11=  ps11.executeQuery();
 ResultSet r12=  ps12.executeQuery();
 
 while(r.next())
 {
%>


<table border="1px">
<tr>
<th>Total Views on Website

    <p>10</p></th>
    
    
<th>Total Volunteer registrations
    <p><%=r.getInt(1) %></p></th>
<%

 }
%>
<% 
while(r1.next())
 {
	%>
 
<th>Total School registrations
    <p><%=r1.getInt(1) %></p></th>
    
    
   <%
   
 }
   %> 
   <% 
   while(r2.next())
 {
	%>
 
   
<th>Total contact Queries
    <p><%=r2.getInt(1) %></p></th></tr>
    <%
 }
    %>
    <% 
    while(r3.next())
 {
%>
    <tr>
    
<th>Total donations
        <p><%=r3.getInt(1) %></p></th>
        
        <%
 }
        %>
        
        <%
        
        while(r4.next())
        {
        %>
<th>Teacher posts by schools
        <p><%=r4.getInt(1) %></p>
        
        
        </th>
        
        <%
        }
        %>
        <%
        while(r5.next())
        {
        
        %>
    <th>Camp Posts by schools
        <p><%=r5.getInt(1) %></p></th>
        
        <%
        }
        %>
        <%
        
        while(r6.next())
        {
        %>
        
       
    <th>No of posts(services end date) held till now(today)
        <p><%=r6.getInt(1) %></p></th>
        
        <%
        }
        %>
        
    </tr>
    <tr>
<th>Donation posts by schools
        <p>10</p></th>
        
        <%
        
        while(r8.next())
        {
        %>
        
<th>Volunteers Interested in Teachers
        <p><%=r8.getInt(1) %></p></th>
        
        <%
        }
        %>
        <%
        
        while(r9.next())
        {
        %>
        
<th>Volunteers Interested in Camps
        <p><%=r9.getInt(1) %></p></th>
        
        <%
        }
        %>
        
        <th>Volunteers Interested in Donation
        <p>10</p></th></tr>
        <%
        while(r10.next())
        {
        %>
    <tr>
<th>No of voulennters who have applied in none post
        <p><%=r10.getInt(1) %></p></th>
        
        <%
        }
        %>
        <%
        
        while(r11.next())
        {
        	
        	int size =0;
        	if (r11 != null) 
        	{
        	  r11.last();    // moves cursor to the last row
        	  size = r11.getRow(); // get row id 
        	}
        %>
<th>No of vounteers who have applied in at least one post<p>
<%=size %></p></th>
<%
        }
%>

<th>no of posts with no responses from volunteer <p>10</p></th>
<%
while(r12.next())
{
	int size =0;
	if (r12 != null) 
	{
	  r12.last();    // moves cursor to the last row
	  size = r12.getRow(); // get row id 
	
	
	}

if(size>5)
{
	%>

        <th>no of posts with more than 5responses<p><%=size %></p></th>
   <%
}
else
{
   %>   
    <th>no of posts with more than 5responses<p><%=size %></p></th>
     
   <%
}
   %>     <%
}
        %>
        
</tr>
</table>
</body>
</html>