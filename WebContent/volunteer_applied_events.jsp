<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.util.Dbutil"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volunteer Applied</title>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file = "header.html" %>
<!--volunteer_applied_events-->

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
                                                HttpSession ss=request.getSession();
                                           String cid_testt=(String)     ss.getAttribute("cid_test");
                                                PreparedStatement pss=c.prepareStatement("select profile from volentier where vol_cid=?");
                                                pss.setString(1,cid_testt);
                                             ResultSet rr=  pss.executeQuery();
                                               System.out.println(cid_testt);
                                              int count=0;
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
                            <div class="volunteer_applied_events">
                                <div class="profile_content">
                                        <div class="row">
<%--                                                 <p>Welcome ${uname}</p> --%>
                                        </div> 
                                        <div class="row">
                                            <div class="event">
                                            <% 
                                            Dbutil du = new Dbutil();
                                            Connection cn = du.gConnection();
                                           
                                            HttpSession s=request.getSession();
                                            String cid_test=(String)s.getAttribute("cid_test");
                                            System.out.println(cid_test);
                                            PreparedStatement ps= cn.prepareStatement("Select * from event_part_application where par_id=?");
                                           ps.setString(1, cid_test);
                                            ResultSet result = ps.executeQuery();
                                            %>
                                            <form action="exitevent.jsp">
                                            <table class="table table-condensed">
                                            <%
                                            while(result.next())
                                            {
                                            	String search = result.getString("act_id");
                                            	   System.out.println("search" +search);
                                            	if(search.startsWith("T"))
                                            	{
                                            		%>
                                            		<tr><th><b>Teacher Post</b></th></tr>
                                            		<tr></tr>
                                            		<tr>
                                            		<th>Title</th>
                                            		<th>Medium</th>
                                            		<th>Subject</th>
                                            		<th>Topics</th>
                                            		<th>Start Date</th>
                                            		<th>End Date</th>
                                            		<th>Location</th>
                                            		</tr>
                                            		<%
                                            		PreparedStatement TchEvnt = cn.prepareStatement("select * from activity_list_teacher where Act_Cust_Id='" + search +"' GROUP BY Act_Cust_Id " );
                                            		ResultSet crs = TchEvnt.executeQuery();
                                            		while(crs.next())
                                            		{
                                            			count++;
                                            	%>
                                            	<tr>
	                                             <td><%=crs.getString("Act_Title") %></td>
 	                         					 <td><%=crs.getString("Act_Med_Lang") %></td>
						                         <td><%=crs.getString("Act_Subject") %></td>
						                         <td><%=crs.getString("Act_TopicCovered") %></td> 
						                         <td><%=crs.getString("Act_Start_Dt") %></td>
						                         <td><%=crs.getString("Act_End_Dt") %></td>
						                         <td><%=crs.getString("Act_Location") %></td>
						                       <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td>
                                            	</tr>
                                            	
                                            	 
                                            	<%
                                            		}
                                            	}
                                            	else if(search.startsWith("V"))
                                            	{
                                            		%>
                                            		<tr><th><b>Volunteer Post</b></th></tr>
                                            		<tr></tr>
                                            		<tr>
                                            		<th>Title</th>
                                            		<th>Type</th>
                                            		<th>Start Date</th>
                                            		<th>End Date</th>
                                            		<th>Location</th>
                                            		</tr>
                                            		<%
                                            	 PreparedStatement VolEvnt = cn.prepareStatement("select * from activity_list_v_other where vol_Cust_Id='" + search +"'");
                                            	 ResultSet vrs = VolEvnt.executeQuery();
                                            	 
                                            	 	while(vrs.next())
                                            	 	{
                                            	 		count++;
                                            	%>
                                            	
                                            		<tr>
								                         <td><%=vrs.getString("vol_Activity_Title") %></td>
								                         <td><%=vrs.getString("vol_Type") %></td>
								                         <td><%=vrs.getString("vol_Act_St_Dt") %></td>
								                         <td><%=vrs.getString("vo_Act_End_Dt") %></td>
								                         <td><%=vrs.getString("vol_Act_Location") %></td>
								                         <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td>
								                    <%--      <td><%=vrs.getString("vol_Act_Discript") %></td> --%>
								                    </tr>
                                            	<%
                                            	 	}
                                            	}
                                            	
                                            	else
                                            	{
                                            		%>
                                            		<tr><th><b>Camp Post</b></th></tr>
                                            		<tr></tr>
                                            		<tr>
                                            		<th>Title</th>
                                            		<th>Purpose</th>
                                            		<th>Start Date</th>
                                            		<th>End Date</th>
                                            		<th>Location</th>
                                            		</tr>
                                            		<%
                                            	  PreparedStatement cmpEvent = cn.prepareStatement("select * from activity_list_camp where cmp_cust_id='"+ search + "'");
                                            
                                            	ResultSet r=cmpEvent.executeQuery();
                                            	while(r.next())
                                            	{
                                            		count++;
                                            		%>
                                            		   <tr>
                      
                         <td><%=r.getString("cmp_Title") %></td>
<%--                          <td><%=r.getString("cmp_TitleOth_camp") %></td>  --%>
                         <td><%=r.getString("cmp_Purpose") %></td> 
                         <td><%=r.getString("cmp_st_dt") %></td>
                         <td><%=r.getString("cmp_end_dt") %></td>
                         <td><%=r.getString("cmp_location") %></td>
                        
                                <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td>
                      <%--    <td><%=r.getString("cmp_trgt_people") %></td> --%>
                                            		</tr>
                                            	<%
                                            	}
                                            	
                                            	}
                                            	
                                            }
                                           
                                            
                                            %>
                                              
                        
                        	 
                        
                        
                                            </table>
                                        
                                            <input class="btn btn-primary" type="submit" value="Delete">
                                            </form>
                                            <!--     <table>
                                                    <tr>
                                                        <th>Sr No.</th>
                                                        <th>Title/Name of the Event/Name of the School</th>
                                                        <th>Type of event/Type of Form filled</th>
                                                        <th>Applied Date</th>
                                                        <th></th>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td><td>Awaremess Program</td>
                                                        <td>Camp</td><td>1/2/2019</td>
                                                        <td>
                                                            <button><a href="#">View Details</a></button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td><td>Anand Vidhyalaya</td>
                                                        <td>Teacher</td><td>3/5/2019</td>
                                                        <td>
                                                                <button><a href="#">View Details</a></button>
                                                            </td>
                                                    </tr>

                                                </table> -->
                                                <p>Showing <b><%=count %></b> events...</p>
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