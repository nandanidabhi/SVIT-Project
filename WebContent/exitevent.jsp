
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.Dbutil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exit</title>
</head>
<body>
<%

Dbutil d=new Dbutil();
Connection c;
c=d.gConnection();
int i1=0;
String ch[]=request.getParameterValues("ch");

HttpSession s=request.getSession();
String cid_test=(String)s.getAttribute("cid_test");
PreparedStatement psmt=c.prepareStatement("delete from event_part_application where act_id=? and par_id=?");
for(int i=0;i<ch.length;i++)
{
psmt.setString(1,ch[i]);
psmt.setString(2, cid_test);

 i1=psmt.executeUpdate();



}

if(i1>0)
{
	request.setAttribute("msg", "you have successfully exit for the sleected event");
	RequestDispatcher rd=request.getRequestDispatcher("volunteer_home.jsp");
	rd.forward(request,response);
}
else
{
	request.setAttribute("msg", "you have successfully exit for the sleected event");
	RequestDispatcher rd=request.getRequestDispatcher("school_home.jsp");
	rd.forward(request,response);
}
%>
</body>
</html>