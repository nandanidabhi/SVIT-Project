package com.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.util.Dbutil;

/**
 * Servlet implementation class Vol_Edit_profile
 */
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class Vol_Edit_profile extends HttpServlet {

	  private static final String SAVE_DIR="volentier";
	  private static final String SAVE_DIR1="certificate";
	  private static final String SAVE_DIR2="other_certificate";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Vol_Edit_profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession s=request.getSession();
	String vid= (String)	s.getAttribute("Vol_id");
		
	
	 String savePath = "C:/Users/NANDANI/Desktop/FinalYearProject/SvIT_projectt/WebContent" + File.separator + SAVE_DIR;
	 String savePath1 = "C:/Users/NANDANI/Desktop/FinalYearProject/SvIT_projectt/WebContent" + File.separator + SAVE_DIR1;
	 String savePath2 = "C:/Users/NANDANI/Desktop/FinalYearProject/SvIT_projectt/WebContent" + File.separator + SAVE_DIR2;
     File fileSaveDir=new File(savePath);
     
     if(!fileSaveDir.exists()){
         fileSaveDir.mkdir();
     }
	Connection c;
	Dbutil d=new Dbutil();
	c=d.gConnection();
	String title=request.getParameter("title");
	String uname=request.getParameter("username");
	String password=request.getParameter("password");
	String volunteer_name=request.getParameter("volunteer_name");
	String date=request.getParameter("date");
	String gen=request.getParameter("gen");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String pincode=request.getParameter("pincode");
	String contact=request.getParameter("contact");
	String email=request.getParameter("email");
	String profession=request.getParameter("profession");
	String Adhar=request.getParameter("Adhar");
	//String file=request.getParameter("file");
	String skill_name_1=request.getParameter("skill_name_1");
	String skill_name_2=request.getParameter("skill_name_2");
	String skill_name_3=request.getParameter("skill_name_3");
	String Skill_1=request.getParameter("Skill_1");
	String Skill_2=request.getParameter("Skill_2");
	
	String Skill_3=request.getParameter("Skill_3");
	String Exp=request.getParameter("Exp");

	//String certificate=request.getParameter("certificate");
	String days=request.getParameter("days");
	String start_date=request.getParameter("start_date");
	String end_date=request.getParameter("end_date");
	String service=request.getParameter("service");	
	String school_name=request.getParameter("school_name");
	String school_state=request.getParameter("school_state");
	String per_10=request.getParameter("10_per");
	String year_10=request.getParameter("10_year");
	String school_name_12=request.getParameter("12school_name");
	String school_state_12=request.getParameter("12school_state");
	String per_12=request.getParameter("12_per");
	String year_12=request.getParameter("12_year");
	String clgname=request.getParameter("clgname");	
	String clg_state=request.getParameter("clg_state");
	
	String other_per=request.getParameter("other_per");
	String other_year=request.getParameter("other_year");
//String other_certificate=request.getParameter("other_certificate");
	String know=request.getParameter("know");
    Part part=request.getPart("file");
    System.out.println(part);
    Part part1=request.getPart("other_certificate");
   Part part2=request.getPart("certificate");
    String fileName=extractFileName(part);
    String fileName1=extractFileName1(part1);
    String fileName2=extractFileName2(part2);
    System.out.println(fileName);
    part.write(savePath + File.separator + fileName);
    part1.write(savePath1 + File.separator + fileName1);
    part2.write(savePath2 + File.separator + fileName1);
	
try {
		
		int lid=0;
		  PreparedStatement fid = c.prepareStatement("select Max(id) from volentier");
		  ResultSet rst = fid.executeQuery();
		  
		  if(rst.next())
			  lid = rst.getInt(1);
		  
		  	String vol_Cid = "VOL"; 
		  			vol_Cid += String.valueOf(lid+1);
	
		  PreparedStatement psmt=c.prepareStatement("update volentier set username=?,password=?,name=?,dob=?,gender=?,address=?,city=?,state=?,pincode=?,contact=?,email=?,profession=?,adhar=?,profile=?,skill1=?,skill1=?,skill3=?,skill_prof1=?,skill_prof2=?,skill_prof3=?,exper=?,document=?,days=?,services=?,school_name=?,scholl_state=?,percentage=?,year=?,h_inst_name=?,h_state=?,h_perc=?,h_year=?,clgname=?,clg_state=?,other_per=?,other_year=?,other_certificate=?,title=?,start_date=?,end_date=?,hoe_to_know=? where vol_cid=?");
		  		
		
		    psmt.setString(1, uname );
		    psmt.setString(2, password);
		    psmt.setString(3, volunteer_name);
		    psmt.setString(4, date);
		    psmt.setString(5, gen );
		    psmt.setString(6, address );
		    psmt.setString(7, city);
		    psmt.setString(8, state);
		    psmt.setString(9,pincode ); 
		    psmt.setString(10, contact);
		    psmt.setString(11, email);
		    psmt.setString(12, profession );
		    psmt.setString(13, Adhar);
		    psmt.setString(14, fileName);
		    psmt.setString(15, skill_name_1);
		    psmt.setString(16, skill_name_2);
		    psmt.setString(17, skill_name_3);
		    psmt.setString(18, Skill_1);
		    psmt.setString(19, Skill_2);
		    psmt.setString(20, Skill_3);
		    psmt.setString(21, Exp);
		   psmt.setString(22,fileName2);
		    psmt.setString(23, days);
		    psmt.setString(24, service);
		    psmt.setString(25, school_name);
		    psmt.setString(26, school_state);
		    psmt.setString(27, per_10);
		    psmt.setString(28, year_10);

		    psmt.setString(29, school_name_12);
		    psmt.setString(30, school_state_12);
		    psmt.setString(31, per_12);
		    psmt.setString(32, year_12);
		    
		    
		    psmt.setString(33, clgname);
		    psmt.setString(34, clg_state);
		    
		    psmt.setString(35, other_per);
		    psmt.setString(36, other_year);
		    psmt.setString(37, fileName1);
		    
		    psmt.setString(38, title);
		    
		    psmt.setString(39, start_date);
		    psmt.setString(40, end_date);
		    psmt.setString(41, know);
		    
		    psmt.setString(42, vid);		
		    
		    
	int i=	    psmt.executeUpdate();
		    	  if(i>0)
		    	  {
		    		  RequestDispatcher rd=request.getRequestDispatcher("volunteer_updatehome.jsp");
	            	  rd.forward(request, response);
		    	  }
		   	} 
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	 private String extractFileName(Part part)
	 {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
}
	 private String extractFileName1(Part part)
	 {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("fileName1")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
}
	 private String extractFileName2(Part part)
	 {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename2")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
}
}
