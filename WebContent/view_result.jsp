<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.Dbutil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>

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
                                                <%
                                                
                                                Dbutil dd=new Dbutil();
                                                Connection cc;
                                                cc=dd.gConnection();
                                                HttpSession ss=request.getSession();
                                           String cid_test=(String)ss.getAttribute("cid_test");
                                                PreparedStatement ps=cc.prepareStatement("select profile from volentier where vol_cid=?");
                                                ps.setString(1,cid_test);
                                             ResultSet rr=  ps.executeQuery();
                                               System.out.println(cid_test);
                                             while(rr.next())
                                             {
                                             %>
                                                
                                                        <img src="volentier/<%=rr.getString("profile") %>" alt="" class="img-responsive"/>
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
                            <div class="volunteer_search_events">
                                <div class="profile_content">
                                        <div class="row">
                                                <p>Search</p>
                                        </div> 
                                        <div class="row">
                                     <!--        <div class="search_event">
                                                <form action="view_result">
                                                    <p>Search By::</p>
                                                    Start Date:<input type="date" name="start_date">
                                                    End Date:<input type="date" name="end_date">
                                                    Location:<input type="text" name="location">
                                                    search:<select name="search"><option value="camp">camp</option><option value="teacher">teacher</option><option value="camp">camp</option></select>
                                                   
                                                   
                                                    <button type="submit">Search Events</button>
                                                </form>
                                            </div>
                                        </div> -->
                                        <%--     <input type="submit" value="Back" onclick="<% response.sendRedirect("volunteer_search_event.jsp");  %>">
                                               
                                        <br/> --%>
                                        <br/>
<a href="volunteer_search_events.jsp" class="list-group-item list-group-item-action">Back</a>

</div>
<% 
	PreparedStatement st=null;
    String eid=null;
Connection c;	
Dbutil d=new Dbutil();
	c=d.gConnection();
	String  s=  request.getParameter("search");
	
	String ed=request.getParameter("end_date");
	
	 SimpleDateFormat d1=new SimpleDateFormat("yyyy-MM-dd");
	 String sd=request.getParameter("start_date");
    Date  dt=d1.parse(sd);          

     //java.sql.Date sqlDate = new java.sql.Date(dt.getTime());   
	
	
     if(s.equals("teacher"))
	{
	  st = c.prepareStatement("SELECT * FROM activity_list_teacher   WHERE Act_Start_Dt BETWEEN ?   AND ? ");
	  st.setString(1, sd);
	  st.setString(2, ed);
	  
	 
	}
	else if (s.equals("volentier_others"))
	{
		st = c.prepareStatement("select * from activity_list_v_other  where vol_Act_St_Dt  BETWEEN ? AND ?");
		  st.setString(1, sd);
		  st.setString(2, ed);
	}
	else
	{
		st = c.prepareStatement("select * from activity_list_camp where cmp_st_dt BETWEEN ? AND ?");
		  st.setString(1, sd);
		  st.setString(2, ed);
	}
	
	ResultSet r=     st.executeQuery();
	
		if(s.equals("teacher"))
			
			
	{
			%>
	
			
			<table class="table table-condensed">
             <tr>
                 <th>Sr No.</th>
                 <th>Activity Title</th>
                 <th>Medium</th>
                 <th>Subject</th>
                 <th>Topics Covered</th>
                 <th>Start Date</th>
                 <th>End Date</th>
                 <th>Location</th>
                
             </tr>
             <% 
			while(r.next())
			{
%>

   
            
                     <tr>
                         <td><%=r.getInt("id") %></td>
                         <td><%=r.getString("Act_Title") %></td>
                         <td><%=r.getString("Act_Med_Lang") %></td>
                         <td><%=r.getString("Act_Subject") %></td>
                         <td><%=r.getString("Act_TopicCovered") %></td>
                         <td><%=r.getString("Act_Start_Dt") %></td>
                         <td><%=r.getString("Act_End_Dt") %></td>
                         <td><%=r.getString("Act_Location") %></td>
                        <td><%-- |<a href="ApplyEvent.jsp?eid=<%=r.getString("Act_Cust_Id")%>">Participate</a> --%> 
                        
                        <form action="ApplyEvent.jsp">
                        
                        <input type="hidden" value="<%= r.getString("Act_Cust_Id")%>" name="eid_test">
                     <%--    <input type="hidden" value="<%= r.getString("vol_cid")%>" name="eid_test"> --%>
                           <!--  /*  eid= r.getString("Act_Cust_Id"); 
                          System.out.println(eid);
                          HttpSession se=request.getSession();
                          se.setAttribute("eid1", eid); */
                           -->
                          
                          <input type="checkbox" name="ch" value="<%=r.getString("Act_Cust_Id")%>">
                        
                      
                        
                          </td>
						                     
                    
                       
                     </tr>
               
               
     </div>                                          
 </div>
<%
	}
             %>
              </table>
              <br/>
              <br/>
              
                <input class="btn btn-warning mb-2" type="submit" value="Participate"> 
              
                         </form>
                          
             
             <% 
	}
		
	else if (s.equals("volentier_others"))
	{
		%>
			<table class="table table-condensed">
                     <tr>
                         <th>Sr No.</th>
                         <th>Activity Title</th>
                         <th>Volentier's Type</th>
                         <th>Start Date</th>
                         <th>End Date</th>
                         <th>Location</th>
                         <th>Description</th>
                         <th></th>
                         <th></th>
                         <th></th>
                     </tr>
                     
                     <% 
                    	 while(r.next())
                     {
		
		%>
		
                     <tr>
                         <td><%=r.getInt("id") %></td>
                         <td><%=r.getString("vol_Activity_Title") %></td>
                         <td><%=r.getString("vol_Type") %></td>
                         <td><%=r.getString("vol_Act_St_Dt") %></td>
                         <td><%=r.getString("vo_Act_End_Dt") %></td>
                         <td><%=r.getString("vol_Act_Location") %></td>
                         <td><%=r.getString("vol_Act_Discript") %></td>
                      
                         <td><form action="ApplyEvent.jsp">
                        
                        	<input type="hidden" value="<%= r.getString("vol_Cust_Id")%>" name="eid_test">
                        	<input type="checkbox" name="ch" value="<%=r.getString("vol_Cust_Id")%>">
                        </td>
                     </tr>
               
<%	
	}
                     %>
                     
                     </table> 
                     <br>
                     <input class="btn btn-warning mb-2" type="submit" value="Participate">
                     </form>
                     <%
	}
                  
                     
	
else if (s.equals("camp"))
	{
	
	
		%>
			<table class="table table-condensed">
                     <tr>
                         <th>Sr No.</th>
                         <th>Title</th>
<!--                          <th>cmp_TitleOth_camp</th> -->
                         <th>Purpose</th>
                         <th>Start Date</th>
                         <th>End Date</th>
                         <th>Location</th>
                             <th>Targeted People</th>
                     </tr>
                     
                     <% 
                     while(r.next())
                     {
		
		%>
		
                     <tr>
                         <td><%=r.getInt("id") %></td>
                         <td><%=r.getString("cmp_Title") %></td>
<%--                          <td><%=r.getString("cmp_TitleOth_camp") %></td> --%>
                         <td><%=r.getString("cmp_Purpose") %></td>
                         <td><%=r.getString("cmp_st_dt") %></td>
                         <td><%=r.getString("cmp_end_dt") %></td>
                         <td><%=r.getString("cmp_location") %></td>
                         <td><%=r.getString("cmp_trgt_people") %></td>
                          <td><form action="ApplyEvent.jsp">
                        
                        	<input type="hidden" value="<%= r.getString("cmp_cust_id")%>" name="eid_test">
                        	<input type="checkbox" name="ch" value="<%=r.getString("cmp_cust_id")%>">
                        </td>
                     </tr>
               
<%	
	}
                     %>
                     </table> 
                      <input class="btn btn-warning mb-2" type="submit" value="Participate">
                     </form>
                     <%
	}
                     %>
                     

</div>
</div>
</body>
</html>