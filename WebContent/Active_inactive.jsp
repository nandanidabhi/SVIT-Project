
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
<title>Admin</title>
</head>
<body>


<%
Connection c;
Dbutil d=new Dbutil();
c=d.gConnection();


PreparedStatement ps=c.prepareStatement("select * from delete_record");
 ResultSet r=  ps.executeQuery();
 
 %>
  <h1>Inactive UserName</h1>
 <table border="1px">

<tr>

<th>Username</th>
<th>Status</th>

</tr>
<%
while(r.next())
{
%>
<tr>
<td>
<%=r.getString("username") %>
</td>
<td>
<%=r.getString("status") %>
</td>
</tr>

<%

}
%>

</table>


<%
Connection c1;
Dbutil d1=new Dbutil();
c1=d1.gConnection();


PreparedStatement ps1=c1.prepareStatement("select * from volentier");
 ResultSet r1=  ps1.executeQuery();
 
 %>

  <h1>Active UserName</h1>
 <table border="1px">

<tr>

<th>Username</th>
<th>Status</th>

</tr>
<%
while(r1.next())
{
%>
<tr>
<td>
<%=r1.getString("username") %>
</td>
<td>
Active
</td>
</tr>

<%

}
%>

</table>



</body>
</html>