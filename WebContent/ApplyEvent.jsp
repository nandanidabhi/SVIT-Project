
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
<title>Applied Events</title>
</head>
<body>
<%
Connection c;
Dbutil d=new Dbutil();
c=d.gConnection();
/* //int title= request.("title");
String vol_title=request.getParameter("vol_title");
String e=request.getParameter("eid_test"); */

String event = request.getParameter("eid_test");
String ch[] = request.getParameterValues("ch");
for(int i=0;i<ch.length;i++)
{
System.out.println(ch[i]);

}
HttpSession s=request.getSession();
String uname=(String)s.getAttribute("uname");
String i=null;

PreparedStatement p1=c.prepareStatement("select c_id from login_table where username=?");

p1.setString(1, uname);
 ResultSet r=  p1.executeQuery();
while(r.next())
{
	 i=r.getString("c_id");
}

for(int k=0;k<ch.length;k++)
{
PreparedStatement p=c.prepareStatement("insert into event_part_application values(?,?,?)");
p.setInt(1, 0);
p.setString(2, ch[k]);
p.setString(3, i);

int y=p.executeUpdate();
if(y>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("volunteer_home.jsp");
	rd.forward(request, response);
}
}



%>





</body>
</html>