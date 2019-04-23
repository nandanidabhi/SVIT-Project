<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<div class="profile"> 
                <div class="container-fluid">
                        <div class="row">
                                <div class="col-md-3">
                                        <div class="profile_col">
                                                <div class="profile_img">
<!--                                                         <img src="images/pic1.jpg" alt="" class="img-responsive"/> -->
                                                </div>
                                                <div class="profile_text">
                                                <div class="list-group">
  <a href="school_home.jsp" class="list-group-item list-group-item-action">${uname}</a>
<%--   <a href="#" class="list-group-item list-group-item-action">${schname}</a> --%>
  <a href="school_update.jsp" class="list-group-item list-group-item-action">Edit Profile</a>
  <a href="logout" class="list-group-item list-group-item-action">Sign Out</a>
</div>
                                                       
                                                </div>
                                        </div>
                                </div>
                        <div class="col-md-9">
                            <div class="volunteer_applied_events">
                                <div class="profile_content">
                                        <div class="row">
                                        </div> 
                                        <div class="row">
                                            <div class="event">
                                            <% 
                                            String par_id,act_id;
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
                                            par_id =result.getString("par_id");
                                            act_id= result.getString("act_id");
                                            
                                            
                                            %>
                                             <form action="exitevent.jsp">
                                            <table class="table table-bordered" > 
                                            <%

                                            	String search = result.getString("act_id");
                                            	   System.out.println("search" +search);
                                            	if(search.startsWith("T"))
                                            	{
                                            		%>
                                            		<tr><th><b>Teacher's Responses</b></th></tr>
                                            		<tr></tr>
                                            		<tr>
                                            		<th>Id</th>
                                            		<th>Name</th>
                                            		<th>Title</th>
                                            		<th>Medium</th>
                                            		<th>Subject</th>
                                            		<th>Topic Covered</th>
                                            		<th>Start Date</th>
                                            		<th>End Date</th>
                                            		<th>Location</th>
                                            		</tr>
                                                                                                                        		
                                            		<%
                                            		PreparedStatement TchEvnt = cn.prepareStatement("SELECT * FROM event_part_application,activity_list_teacher,volentier WHERE act_id=Act_Cust_Id AND par_id=vol_cid");
                                            		ResultSet crs = TchEvnt.executeQuery();
                                            		
                                            		while(crs.next())
                                            		{
                                            			 count++;
                                            	%>
                                            	<tr>
                                            	  <td><%=crs.getString("act_id") %></td>
                                            	<td><%=crs.getString("NAME") %></td>
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
                                           
                                            	
                                            	
                                            	else if(search.startsWith("C"))
                                            	{
                                            		count++;
                                            		%>
                                            		<tr><th><b>Camp's Responses</b></th></tr>
                                              		<tr></tr>
                                            		<tr>
                                            		<th>Id</th>
                                            		<th>Title</th>
                                            		<th>Purpose</th>
                                            		<th>Start Date</th>
                                            		<th>End Date</th>
                                            		<th>Location</th>
                                            		</tr>
                                                                                                                        		
                                            		<%
                                            		  PreparedStatement cmpEvent = cn.prepareStatement("SELECT * FROM event_part_application,activity_list_camp,volentier WHERE act_id=cmp_cust_id AND par_id=vol_cid");
                                            		
                                            		  
                                            		  
                                                  	ResultSet r=cmpEvent.executeQuery();
                                                  	while(r.next())
                                                  	{
                                                  		count++;
                                                  		System.out.println("TTT"+r.getString("act_id"));
                                                  		%>
                                                    	
                                                		<tr>
                                                		  <td><%=r.getString("act_id") %></td>
                                            	<td><%=r.getString("NAME") %></td>
                                                		  
    								                         <td><%=r.getString("cmp_Title") %></td>
    								                            <td><%=r.getString("cmp_Purpose") %></td>
    								                            <td><%=r.getString("cmp_st_dt") %></td>
    								                            <td><%=r.getString("cmp_end_dt") %></td>
    								                            <td><%=r.getString("cmp_location") %></td>
    	                                                       <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td> 
    								                    </tr>
    								                    
                                                	<%
                                                  	}
                                            	}
                                   
                                            	else
                                            	{
                                            		%>
                                            		<tr><th><b>Volunteer's Responses</b></th></tr>
                                              		<tr></tr>
                                            		<tr>
                                            		<th>Id</th>
                                            		<th>Title</th>
                                            		<th>Volunteer Type</th>
                                            		<th>Start Date</th>
                                            		<th>End Date</th>
                                            		<th>Location</th>
                                            		</tr>
                                                                                                                        		
                                            		<%
                                            	 PreparedStatement VolEvnt = cn.prepareStatement("SELECT * FROM event_part_application,activity_list_v_other,volentier WHERE act_id=vol_Cust_Id AND par_id=vol_cid");
                                            
                                            	 ResultSet vrs = VolEvnt.executeQuery();
                                            	 
                                            	 	while(vrs.next())
                                            	 	{
                                            	 		count++;
                                            	%>
                                            	
                                            		<tr>
                                            		  <td><%=vrs.getString("act_id") %></td>
                                            	<td><%=vrs.getString("NAME") %></td>
                                            		  
								                         <td><%=vrs.getString("vol_Activity_Title") %></td>
 								                         <td><%=vrs.getString("vol_Type") %></td> 
 								                         <td><%=vrs.getString("vol_Act_St_Dt") %></td>
 								                         <td><%=vrs.getString("vo_Act_End_Dt") %></td> 
 								                         <td><%=vrs.getString("vol_Act_Location") %></td>
 								                             <td>  <input type="checkbox" name="ch" value="<%=result.getString("act_id")%>"></td> 
 								                       
								                    </tr>
								                    
                                            	<%
                                            	 	}
                                            	}
                                            	
                                           
                                           
                                            }
                                            %>
                                              </table>
                                              
                            <input class="btn btn-warning" type="submit" value="Delete">
                                              
                                              
                        <p>Showing <b><%=count %></b> events...</p>
                        
                        	 
                        
                        
                                        
                                            </form>
           
                                                
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