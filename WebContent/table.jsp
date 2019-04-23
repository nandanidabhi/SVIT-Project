<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="com.util.Dbutil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link  rel="stylesheet" type="text/css" href="mycss.css">
	<title>i-volunteer administrator tables</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="orange" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">
            <div class="logo">
                <a class="simple-text">
                    i-volunteer administrator
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="admin_p.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Edit Home Page</p>
                    </a>
                </li>
                <li class="active">
                    <a href="table.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Table List</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Table List</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
								<p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                      
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        
                       <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <p>
										Profile
										<b class="caret"></b>
									</p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Edit login details</a></li>
                                  <li><a href="#">
                                        <p>Log out</p>
                                    </a>
                                </li>
                              </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
<!--volunteer-->
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Volunteers</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                            <%
                            Connection c;
                            Dbutil s=new Dbutil();
                            c=s.gConnection();
                            PreparedStatement ps=c.prepareStatement("select * from volentier");
                          ResultSet r=    ps.executeQuery();
                           
                        %>
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>Name</th>
                                    	<th>dob</th>
                                    	<th>gender</th>
                                    	<th>address</th>
                                    	<th>city</th>
                                    	<th>state</th>
                                    	<th>pincode</th>
                                    	<th>contact</th>
                                    	<th>email</th>
                                    	
                                    	<th>profession</th>
                                    	
                                    	<th>ADHAR</th>
                                    	<th>profile</th>
                                    	<th>skill1</th>
                                    	
                                    	<th>skill2</th>
                                    	<th>skill3</th>
                                    	<th>skill_prof1</th>
                                    	<th>skill_prof2</th>
                                    	
                                    	<th>skill_prof3</th>
                                    	<th>exper</th>
                                    	<th>days</th>
                                    	
                                    	<th>services</th>
                                    </thead>
                                    <% 
                                    while(r.next())
                                    {
                                    
                                    %>
                                    <tbody>
                                        <tr>
                                        	<td><%=r.getInt(1) %></td>
                                        	<td><%=r.getString(2) %></td>
                                        	<td><%=r.getString("dob") %></td>
                                        	<td><%=r.getString("address") %></td>
                                        	<td><%=r.getString("city") %></td>
                                        	<td><%=r.getString("state") %></td>
                                        	<td><%=r.getString("pincode") %></td>
                                        	<td><%=r.getString("contact") %></td>
                                        	<td><%=r.getString("email") %></td>
                                        	<td><%=r.getString("profession") %></td>
                                        	<td><%=r.getString("ADHAR") %></td>
                                        	
                                        	<td><%=r.getString("profile") %></td>
                                        		<td><%=r.getString("skill1") %></td>
                                        			<td><%=r.getString("skill2") %></td>
                                        			<td><%=r.getString("skill3") %></td>
                                        			<td><%=r.getString("skill_prof1") %></td>
                                        			<td><%=r.getString("skill_prof2") %></td>
                                        			<td><%=r.getString("skill_prof3") %></td>
                                        				<td><%=r.getString("skill_prof3") %></td>
                                        					<td><%=r.getString("exper") %></td>
                                        					
                                        						<td><%=r.getString("days") %></td>
                                        							<td><%=r.getString("services") %></td>
                                        							
                                        							<td>
                                        					<a href="delete?id=<%=r.getInt(1)%>">delete</a>
                                        							</td>
                                        	
                                        </tr>
                                       <!--  <tr>
                                        	<td>2</td>
                                        	+
                                        	<td>Minerva Hooper</td>
                                        	<td>$23,789</td>
                                        	<td>Curaçao</td>
                                        	<td>Sinaai-Waas</td>
                                        </tr>
                                        <tr>
                                        	<td>3</td>
                                        	<td>Sage Rodriguez</td>
                                        	<td>$56,142</td>
                                        	<td>Netherlands</td>
                                        	<td>Baileux</td>
                                        </tr> -->
                                      
                                    </tbody>
                                      <%
                          }
                                %>
                                </table>
                                
                              
                                
                            </div>
                        </div>
                    </div>
<!--school-->            
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Schools</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                             <%
                            
                            PreparedStatement ps1=c.prepareStatement("select * from school");
                          ResultSet r1=    ps1.executeQuery();
                           
                        %>
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>Name</th>
                                    	<th>school_name</th>
                                    	<th>register_no</th>
                                    	<th>school_contact</th>
                                    		<th>address</th>
                                    			<th>city</th>
                                    			
                                    				<th>state</th>
                                    					<th>pincode</th>
                                    						<th>medium</th>
                                    							<th>board</th>
                                    								<th>type_of_school</th>
                                    								
                                    									<th>no_students</th>
                                    										<th>high_education</th>
                                    										<th>website</th>
                                    										
                                    										<th>email_school</th>
                                    										<th>interested</th>
                                    										
                                    										
<th>sch_cnt_designation</th>


<th>sch_cnt_contact</th>
<th>sch_cnt_email</th>
                                    </thead>
                                    <%
                                    while(r1.next())
                                    {
                                    
                                    %>
                                    <tbody>
                                        <tr>
                                        	<td><%=r1.getInt("id") %></td>
                                        	<td><%=r1.getString("username") %></td>
                                        	 <td><%=r1.getString("school_name") %></td>
                                        	 <td><%=r1.getString("register_no") %></td>
                                        	<td><%=r1.getString("school_contact") %></td>
                                        		<td><%=r1.getString("address") %></td>
                                        			<td><%=r1.getString("city") %></td>
                                        			
                                        				<td><%=r1.getString("state") %></td>
                                        					<td><%=r1.getString("pincode") %></td>
                                        						<td><%=r1.getString("medium") %></td>
                                        						
                                        							<td><%=r1.getString("board") %></td>
                                        							
                                        								<td><%=r1.getString("type_of_school") %></td>
                                        									<td><%=r1.getString("no_students") %></td>
                                        									
                                        										<td><%=r1.getString("high_education") %></td>
                                        										<td><%=r1.getString("website") %></td>
                                        										<td><%=r1.getString("email_school") %></td>
                                        										<td><%=r1.getString("interested") %></td>
                                        										<td><%=r1.getString("sch_cnt_designation") %></td>
                                        											<td><%=r1.getString("sch_cnt_contact") %></td>
                                        												<td><%=r1.getString("sch_cnt_email") %></td>
                                        													<td>
                                        					<a href="delete?id=<%=r1.getInt(1)%>">delete</a>
                                        							</td>
                                        										
                                        </tr>
                                                                      
                                    </tbody>
                                      <%
                                
                                    }
                                %>
                                </table>
                              
                                
                                
                            </div>
                        </div>
                    </div>
                    <!--Volunteer post form-->
					
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Volunteer Post Form</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                             <%
                           
                            PreparedStatement ps2=c.prepareStatement("select * from activity_list_v_other");
                          ResultSet r2=    ps2.executeQuery();
                           
                        %>
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>vol_Activity_Title</th>
                                    	<th>vol_Type</th>
                                    	<th>vol_Act_St_Dt</th>
                                    	<th>vo_Act_End_Dt</th>
                                    	<th>vol_Act_Location</th>
                                    	<th>vol_Act_Discript</th>
                                    	
                                    </thead>
                                    
                                    <%
                                    while(r2.next())
                                    {
                                    %>
                                    
                                    <tbody>
                                        <tr>
                                        	<td><%=r2.getInt(1) %></td>
                                        	<td><%=r2.getString(2) %></td>
                                        	<td><%=r2.getString(3) %></td>
                                        	<td><%=r2.getDate(4) %></td>
                                        	<td><%=r2.getDate(5) %></td>
                                        	<td><%=r2.getString(6) %></td>
                                        	<td><%=r2.getString(7) %></td>
                                        		<td>
                                        					<a href="delete?id=<%=r2.getInt(1)%>">delete</a>
                                        							</td>
                                        </tr>
                                                                       
                                    </tbody>
                                    
                                    <%
                                    
                                    }
                                    %>
                                    
                                </table>
                            </div>
                        </div>
                    </div>   
					
					
					<!--Teacher post form-->
					
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Teacher Post Form</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                              <%
                          
                            PreparedStatement ps3=c.prepareStatement("select * from activity_list_teacher");
                          ResultSet r3=    ps3.executeQuery();
                           
                        %>
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>Act_Title</th>
                                    	<th>Act_Med_Lang</th>
                                    	<th>Act_Subject</th>
                                    	<th>Act_TopicCovered</th>
                                    	<th>Act_Start_Dt</th>
                                    	<th>Act_End_Dt</th>
                                    	
                                    	<th>Act_Location</th>
                                    	<th>description</th>
                                    	
                                    	
                                    </thead>
                                    <%
                                    while(r3.next())
                                    {
                                    %>
                                    <tbody>
                                        <tr>
                                        <td><%=r3.getInt(1) %></td>
                                        	<td><%=r3.getString(2) %></td>
                                        	<td><%=r3.getString(3) %></td>
                                        	<td><%=r3.getString(4) %></td>
                                        	<td><%=r3.getString(5) %></td>
                                        	<td><%=r3.getString(6) %></td>
                                        	<td><%=r3.getString(7) %></td>
                                        	<td><%=r3.getString(8) %></td>
                                        	<td><%=r3.getString(9) %></td>
                                        		<td>
                                        					<a href="delete?id=<%=r3.getInt(1)%>">delete</a>
                                        							</td>
                                        </tr>
                                                                     
                                    </tbody>
                                    
                                    <%
                                    
                                    }
                                    %>
                                    
                                </table>
                            </div>
                        </div>
                    </div>   
					
					<!--Camp post form-->
					
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Camp Post Form</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                             <%
                            
                            PreparedStatement ps4=c.prepareStatement("select * from activity_list_camp");
                          ResultSet r4=    ps4.executeQuery();
                           
                        %>
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>cmp_Title</th>
                                    	<th>cmp_TitleOth_camp</th>
                                    	<th>cmp_Purpose</th>
                                    	<th>cmp_st_dt</th>
                                    		<th>cmp_end_dt</th>
                                    		
                                    			<th>cmp_location</th>
                                    				<th>cmp_trgt_people</th>
                                    				
                                    </thead>
                                    <%
                                    
                                    while(r4.next())
                                    {
                                    %>
                                    <tbody>
                                        <tr>
                                        	<td><%=r4.getInt(1) %></td>
                                        	<td><%=r4.getString(2) %></td>
                                        	<td><%=r4.getString(3) %></td>
                                        	<td><%=r4.getString(4) %></td>
                                        	<td><%=r4.getString(5) %></td>
                                        		<td><%=r4.getString(6) %></td>
                                        			<td><%=r4.getString(7) %></td>
                                        			<td><%=r4.getString(8) %></td>
                                        				<td>
                                        					<a href="delete?id=<%=r4.getInt(1)%>">delete</a>
                                        							</td>
                                        </tr>
                                                                          
                                    </tbody>
                                    <%
                                    }
                                    %>
                                </table>
                            </div>
                        </div>
                    </div>      
					
					<!--Queries from contact us page ends-->
										
					
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Queries from Contact Us Page</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>Name</th>
                                    	<th>email</th>
                                    	<th>Contact us</th>
                                    	<th>description</th>
                                    </thead>
                                   
                                    
                                    <%
                                    Connection c44;
                                    Dbutil s44=new Dbutil();
                                    c44=s44.gConnection();
                                    PreparedStatement ps44=c44.prepareStatement("select * from contact");
                                  ResultSet r44=    ps44.executeQuery();
                                   int count=0;
                                   count++;
                                   while(r44.next())
                                   {
                                	   %>
                                    <tbody>
                                        <tr>
                                        	<td><%=count %></td>
                                        	<td><%=r44.getString(1) %></td>
                                        	<td><%=r44.getString(2) %></td>
                                        	<td><%=r44.getString(3) %></td>
                                        	<td><%=r44.getString(4) %></td>
                                        		<td>
                                        					<a href="delete?id=<%=r44.getInt(1)%>">delete</a>
                                        							</td>
                                        </tr>
                                                               
                                    </tbody>
                                    <%
                                   }
                                    %>
                                </table>
                            </div>
                        </div>
                    </div>      
<!--Donors-->
                    
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Donation</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                              <%
                            Connection c5;
                            Dbutil s5=new Dbutil();
                            c5=s5.gConnection();
                            PreparedStatement ps5=c.prepareStatement("select * from donation");
                          ResultSet r5=    ps5.executeQuery();
                           
                        %>
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>firstname</th>
                                    	<th>lastname</th>
                                    	<th>contact_no</th>
                                    	<th>email_id</th>
                                    	<th>gender</th>
                                    	
                                    	<th>address</th>
                                    	
                                    	<th>state</th>
                                    	<th>pincode</th>
                                    		<th>addhar_no</th>
                                    		
                                    			<th>currency_type</th>
                                    				<th>amount</th>
                                    				
                                    					<th>donation_type</th>
                                    	<th>username</th>
                                    	<th>password</th>
                                    </thead>
                                    <%
                                    
                                    while(r5.next())
                                    {
                                    %>
                                    <tbody>
                                        <tr>
                                        <td><%=r5.getInt(1) %></td>
                                        	<td><%=r5.getString(2) %></td>
                                        	<td><%=r5.getString(3) %></td>
                                        	<td><%=r5.getString(4) %></td>
                                        	<td><%=r5.getString(5) %></td>
                                        		<td><%=r5.getString(6) %></td>
                                        			<td><%=r5.getString(7) %></td>
                                        			
<td><%=r5.getString(8) %></td>

<td><%=r5.getString(9) %></td>
<td><%=r5.getString(10) %></td>
<td><%=r5.getString(11) %></td>
<td><%=r5.getString(12) %></td>
<td><%=r5.getString(13) %></td>
<td><%=r5.getString(14) %></td>
	<td>
                                        					<a href="delete?id=<%=r5.getInt(1)%>">delete</a>
                                        							</td>
                                        </tr>
                                                                          
                                    </tbody>
                                    
                                    <%
                                    
                                    }
                                    %>
                                    
                                
                                    
                                </table>
                            </div>
                        </div>
                    </div>                    
                                
<!--Newsletter Subscribers-->            

                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Newsletter Subscribers</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover">
                                    <thead>
                                        <th>ID</th>
                                    	<th>Name</th>
                                    	<th>Salary</th>
                                    	<th>Country</th>
                                    	<th>City</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td>1</td>
                                        	<td>Dakota Rice</td>
                                        	<td>$36,738</td>
                                        	<td>Niger</td>
                                        	<td>Oud-Turnhout</td>
                                        </tr>
                                        <tr>
                                        	<td>2</td>
                                        	<td>Minerva Hooper</td>
                                        	<td>$23,789</td>
                                        	<td>Curaçao</td>
                                        	<td>Sinaai-Waas</td>
                                        </tr>
                                        <tr>
                                        	<td>3</td>
                                        	<td>Sage Rodriguez</td>
                                        	<td>$56,142</td>
                                        	<td>Netherlands</td>
                                        	<td>Baileux</td>
                                        </tr>                                      
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>                    
                    <!---table ends -->
                    
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a >i-volunteer administrator</a>
            </div>
        </footer>


    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>


</html>
