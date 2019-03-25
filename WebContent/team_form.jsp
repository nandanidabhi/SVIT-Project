<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.Dbutil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Team</title>
</head>
<body>

<!-- Leader Details:<br><br>
Registrtation No:<input type="text" name="reg_no" required><br>
Username:<input type="text" name="username" required><br>
Password:<input type="text" name="password]" required><br>
Contact details:<input type="text" name="leader_contact" reuired><br>
Email:<input type="text" name="leader_email" required><br><br><br>

Members Details:
Username:<input type="text" name="" required><br>
Password:<input type="text" name="" required><br>
<br>
Services:<br><br><input type="checkbox" name="services" value="teach">Teach
<input type="checkbox" name="services" value="teach">Donate
<input type="checkbox" name="services" value="teach">Volunteer
<br>
<br>
Team name:<input type="text" name="team_name" required>
<br>
<input type="checkbox" required>I accept terms & conditions<br><br>
<input type="register" vaule="REGISTER"> -->
<form action="team_add.jsp" method="post">
Enter team name<input type="text" name="teamname" required><br>
Enter team task<input type="text" name="teamtask" required><br>
<%
ArrayList<String> al=new ArrayList<String>(); 
Connection c;
Dbutil d=new Dbutil();
c=d.gConnection();
PreparedStatement psmt=c.prepareStatement("select * from volentier");
ResultSet r=psmt.executeQuery();

PrintWriter o=response.getWriter();
%>

<select name="leader">
<% 
int i=0;
while(r.next())
{
	
	
	String name=r.getString("NAME");
	
	al.add(i,name);
	
	i++;
	System.out.println("name"+al);
	%>
	
	
	
	
	Select the leader<option value="<%=name%>"><%=name%></option>

	
	
<% 	
}
r.close();

%>
</select> <br/>
<br/>
<br/>
<br/>


 <% 
for(int j=0;j<al.size();j++)
{

String s=	al.get(j);
/* System.out.println("s"+s); */
	%>
	
	
	
	
 Select the Team member<input type="checkbox" name="services" value="<%= s %>"><%=s %><br/>

	 
	
<% 	
}

%> 
 <input type="submit" value="ok">
</form>











</body>
</html>