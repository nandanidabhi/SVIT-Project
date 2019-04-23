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
<title>Applied</title>
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
                                                <img src="images/pic1.jpg" alt="" class="img-responsive"/>
                                        </div>
                                       <div class="profile_text">
                                                        <p>${uname}</p>
                                                        <p>${uname}</p>
                                                        <p><a href="school_update.jsp">[Edit Profile]</a></p>
                                                        <p><a href="logout">Sign Out</a></p>
                                                </div>
                                </div>
                        </div>
                        <div class="col-md-9">
                            <div class="volunteer_applied_events">
                                <div class="profile_content">
                                        <div class="row">
                                                <p>Welcome ${uname } !!</p>
                                        </div> 
                                        <div class="row">
                                            <div class="event">
                                            <% 
                                            Dbutil du = new Dbutil();
                                            Connection cn;
                                             cn = du.gConnection();
                                           
                                            HttpSession s=request.getSession();
                                         /*    String cid_test=(String)s.getAttribute("cid_test");
                                            System.out.println("t" +cid_test); */
                                            PreparedStatement ps= cn.prepareStatement("Select * from event_part_application");
                                            int count=0;
                                          // ps.setString(1, cid_test);
                                            ResultSet result = ps.executeQuery();
                                            while(result.next())
                                            {
                                           String par_id =result.getString("par_id");
                                           String act_id= result.getString("act_id");
                                            
                                            
                                            %>
                                            <form action="exitevent.jsp">
                                            <table border="1">
                                            <%
                                            while(result.next())
                                            {
                                            	String search = result.getString("act_id");
                                            	   System.out.println("search" +search);
                                            	if(search.startsWith("T"))
                                            	{
                                            		PreparedStatement TchEvnt = cn.prepareStatement("SELECT act_id,par_id,Act_Cust_Id,Act_title,vol_cid,username FROM event_part_application,activity_list_teacher,volentier WHERE act_id=Act_Cust_Id AND par_id=vol_cid)" );
                                            		
                                            	
                                            		ResultSet crs = TchEvnt.executeQuery();
                                            		while(crs.next())
                                            		{
                                            			count++;
                                            	%>
                                            	<tr>
	                                             <td><%=crs.getString("Act_Title") %></td>
	                                               <td><%=crs.getString("username") %></td>
	                                             
	                         					<%--  <td><%=crs.getString("Act_Med_Lang") %></td>
						                         <td><%=crs.getString("Act_Subject") %></td>
						                         <td><%=crs.getString("Act_TopicCovered") %></td> --%>
						                        <%--  <td><%=crs.getString("Act_Start_Dt") %></td>
						                         <td><%=crs.getString("Act_End_Dt") %></td>
						                         <td><%=crs.getString("Act_Location") %></td> --%>
						                   <%--     <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td> --%>
                                            	</tr>
                                            	
                                            	 
                                            	<%
                                            		}
                                            	}
                                            	else if(search.startsWith("V"))
                                            	{
                                            	 PreparedStatement VolEvnt = cn.prepareStatement("SELECT act_id,par_id,vol_Activity_Title,vol_cid,vol_Cust_Id,username FROM event_part_application,activity_list_v_other,volentier WHERE act_id=vol_Cust_Id AND par_id=vol_cid");
                                            
                                            	 ResultSet vrs = VolEvnt.executeQuery();
                                            	 
                                            	 	while(vrs.next())
                                            	 	{
                                            	 		count++;
                                            	%>
                                            	
                                            		<tr>
								                         <td><%=vrs.getString("vol_Activity_Title") %></td>
								                            <td><%=vrs.getString("username") %></td>
	                                             
								                      <%--    <td><%=vrs.getString("vol_Type") %></td> --%>
								                      <%--    <td><%=vrs.getString("vol_Act_St_Dt") %></td>
								                         <td><%=vrs.getString("vo_Act_End_Dt") %></td>
								                         <td><%=vrs.getString("vol_Act_Location") %></td> --%>
								                            <%--  <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td> --%>
								                    <%--      <td><%=vrs.getString("vol_Act_Discript") %></td> --%>
								                    </tr>
                                            	<%
                                            	 	}
                                            	}
                                            	
                                            	else
                                            	{
                                            	  PreparedStatement cmpEvent = cn.prepareStatement("SELECT act_id,par_id,cmp_cust_id,cmp_Title,vol_cid,username FROM event_part_application,activity_list_camp,volentier WHERE act_id=cmp_cust_id AND par_id=vol_cid");
                                            	 
                                            	ResultSet r=cmpEvent.executeQuery();
                                            	while(r.next())
                                            	{
                                            		count++;
                                            		%>
                                            		   <tr>
                      
                         <td><%=r.getString("cmp_Title") %></td>
                            <td><%=r.getString("username") %></td>
                     <%--     <td><%=r.getString("cmp_TitleOth_camp") %></td>
                         <td><%=r.getString("cmp_Purpose") %></td> --%>
                       <%--   <td><%=r.getString("cmp_st_dt") %></td>
                         <td><%=r.getString("cmp_end_dt") %></td>
                         <td><%=r.getString("cmp_location") %></td> --%>
                           
                          
                              <%--   <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td> --%>
                      <%--    <td><%=r.getString("cmp_trgt_people") %></td> --%>
                                            		</tr>
                                            	<% 
                                            	}
                                            	}
                                            	
                                            	}
                                            	
                                            }
                                           
                                            
                                            %>
                                              
                        
                        	 
                        
                        
                                            </table>
                                        
                                            <input type="submit" value="Delete">
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