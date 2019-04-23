
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

String tname=request.getParameter("teamname");
String teamtask=request.getParameter("teamtask");
String name=request.getParameter("leader");
System.out.println(name);
String services=request.getParameter("services");
System.out.println(services);
Connection c;
Dbutil db=new Dbutil();
c=db.gConnection();
PreparedStatement p=c.prepareStatement("insert into team_mast values(?,?,?,?,?)");
p.setInt(1, 0);
p.setString(2, tname);
p.setString(3, teamtask);

p.setString(4, services);

p.setString(5, name);

int i=p.executeUpdate();
if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("test.jsp");
	  rd.forward(request, response);

}
%>



</body>
</html>