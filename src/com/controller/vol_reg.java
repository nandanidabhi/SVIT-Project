package com.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.util.Dbutil;

/**
 * Servlet implementation class vol_reg
 */@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
         maxFileSize=1024*1024*10,      // 10MB
         maxRequestSize=1024*1024*50)
public class vol_reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private static final String SAVE_DIR="volentier";
	  private static final String SAVE_DIR1="certificate";
	  private static final String SAVE_DIR2="other_certificate";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public vol_reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String savePath = "C:/Users/NANDANI/Desktop/FinalYearProject/SVIT_Project/WebContent" + File.separator + SAVE_DIR;
		 String savePath1 = "C:/Users/NANDANI/Desktop/FinalYearProject/SVIT_Project/WebContent" + File.separator + SAVE_DIR1;
		 String savePath2 = "C:/Users/NANDANI/Desktop/FinalYearProject/SVIT_Project/WebContent" + File.separator + SAVE_DIR2;
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
		
		  PreparedStatement psmt=c.prepareStatement("insert into volentier values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");
		  	psmt.setInt(1, 0);
		    psmt.setString(2, uname );
		    psmt.setString(3, password);
		    psmt.setString(4, volunteer_name);
		    psmt.setString(5, date);
		    psmt.setString(6, gen );
		    psmt.setString(7, address );
		    psmt.setString(8, city);
		    psmt.setString(9, state);
		    psmt.setString(10,pincode ); 
		    psmt.setString(11, contact);
		    psmt.setString(12, email);
		    psmt.setString(13, profession );
		    psmt.setString(14, Adhar);
		    psmt.setString(15, fileName);
		    psmt.setString(16, skill_name_1);
		    psmt.setString(17, skill_name_2);
		    psmt.setString(18, skill_name_3);
		    psmt.setString(19, Skill_1);
		    psmt.setString(20, Skill_2);
		    psmt.setString(21, Skill_3);
		    psmt.setString(22, Exp);
		   psmt.setString(23,fileName2);
		    psmt.setString(24, days);
		    psmt.setString(25, service);
		    psmt.setString(26, school_name);
		    psmt.setString(27, school_state);
		    psmt.setString(28, per_10);
		    psmt.setString(29, year_10);

		    psmt.setNString(30, school_name_12);
		    psmt.setNString(31, school_state_12);
		    psmt.setNString(32, per_12);
		    psmt.setNString(33, year_12);
		    
		    
		    psmt.setNString(34, clgname);
		    psmt.setNString(35, clg_state);
		    
		    psmt.setNString(36, other_per);
		    psmt.setNString(37, other_year);
		    psmt.setNString(38, fileName1);
		    
		    psmt.setNString(39, title);
		    
		    psmt.setNString(40, start_date);
		    psmt.setNString(41, end_date);
		    psmt.setNString(42, know);
		    
		    		
		    
		    
	int i=	    psmt.executeUpdate();
		    	  if(i>0)
		    	  {
		    		  RequestDispatcher rd=request.getRequestDispatcher("login_form.jsp");
	            	  rd.forward(request, response);
		    	  }
		   	} 
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		
		
		
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
