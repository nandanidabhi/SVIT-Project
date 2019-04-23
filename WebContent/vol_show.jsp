
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
<title>Volunteer Details</title>
</head>
<body>

<%
Connection c;
Dbutil d=new Dbutil();
c=d.gConnection();
PreparedStatement ps=c.prepareStatement("select * from volentier");
 ResultSet r=  ps.executeQuery();
while(r.next())
{

%>
<table class="table table-condensed">
<tr>
<td>
<%=r.getInt(1) %>

</td>
<td>
<%=r.getString(2) %>

</td>
<td>
<%=r.getString(3) %>

</td>
<td>
<%=r.getString(4) %>

</td>
<td>
<%=r.getString(5) %>

</td>
<td>
<%=r.getString(6) %>

</td>
<td>
<%=r.getString(7) %>

</td>
<td>
<%=r.getString(8) %>

</td>
<td>
<%=r.getString(9) %>

</td>
<td>
<%=r.getString(10) %>

</td>
<td>
<%=r.getString(11) %>

</td>
<td>
<%=r.getString(12) %>

</td>
<td>
<%=r.getString(13) %>

</td>
<td>
<%=r.getString(14) %>

</td>
<td>
<img src="volentier/<%=r.getString("profile") %>">

</td>
<td>
<%=r.getString(16) %>

</td>
<td>
<%=r.getString(17) %>

</td>
<td>
<%=r.getString(18) %>

</td>
<td>
<%=r.getString(19) %>

</td>
<td>
<%=r.getString(20) %>

</td>
<td>
<%=r.getString(21) %>

</td>
<td>
<%=r.getString(22) %>

</td>
<td>
<%=r.getString(23) %>

</td>
<td>
<%=r.getString(24) %>

</td>
<td>
<%=r.getString(25) %>

</td>
<td>
<%=r.getString(26) %>

</td>
<td>
<%=r.getString(27) %>

</td>
<td>
<%=r.getString(28) %>

</td>
<td>
<%=r.getString(29) %>

</td>
<td>
<%=r.getString(30) %>

</td>
<td>
<%=r.getString(31) %>

</td>
<td>
<%=r.getString(32) %>

</td>
<td>
<%=r.getString(33) %>

</td>
<td>
<%=r.getString(34) %>

</td>
<td>
<%=r.getString(35) %>

</td>
<td>
<%=r.getString(36) %>

</td>
<td>
<%=r.getString(37) %>

</td>
<td>
<%=r.getString(38) %>

</td>
<td>
<%=r.getString(39) %>

</td>
<td>
<%=r.getString(40) %>

</td>
<td>
<%=r.getString(41) %>

</td>
<td>
<%=r.getString(42) %>

</td>
<td>
<%=r.getString(43) %>

</td>
</tr>



</table>


<%

}
%>


</body>
</html>