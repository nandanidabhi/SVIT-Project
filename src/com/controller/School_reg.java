
package com.controller;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Dbutil;

public class School_reg extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public School_reg() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Connection c;
		Dbutil d=new Dbutil();
		c=d.gConnection();
		//int title= request.("title");
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		String school_name=request.getParameter("school_name");
		String registration_no=request.getParameter("registration_no");
		String school_contact=request.getParameter("school_contact");
		String sch_address=request.getParameter("sch_address");
		String sch_city=request.getParameter("sch_city");
		String sch_state=request.getParameter("sch_state");
		String sch_pincode=request.getParameter("sch_pincode");
		String sch_med=request.getParameter("sch_med");
		String sch_board=request.getParameter("sch_board");
		String sch_type=request.getParameter("sch_type");
		String number_of_students=request.getParameter("number_of_students");
		String highest_education=request.getParameter("highest_education");
		String website=request.getParameter("website");
		String email_school=request.getParameter("email_school");
		String interested=request.getParameter("interested");
		String sch_cnt_name=request.getParameter("sch_cnt_name");
		String sch_cnt_designation=request.getParameter("sch_cnt_designation");
		String sch_cnt_contact=request.getParameter("sch_cnt_contact");
		String sch_cnt_email=request.getParameter("sch_cnt_email");
		
		
		try
		{
			
				
				  PreparedStatement psmt=c.prepareStatement("insert into school values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				  
				  psmt.setInt(1, 0);
				  psmt.setString(2, uname);
				  psmt.setString(3, password);
				  psmt.setString(4, school_name);
				  psmt.setString(5, registration_no);
				  psmt.setString(6, school_contact);
				  psmt.setString(7, sch_address);
				  psmt.setString(8, sch_city);
				  psmt.setString(9, sch_state);
				  psmt.setString(10, sch_pincode);
				  psmt.setString(11, sch_med);
				  psmt.setString(12, sch_board);
				  psmt.setString(13, sch_type);
				  psmt.setString(14, number_of_students);
				  psmt.setString(15, highest_education);
				  psmt.setString(16, website);
				  psmt.setString(17, email_school);
				  psmt.setString(18, interested);
				  psmt.setString(19, sch_cnt_name);
				  psmt.setString(20, sch_cnt_designation);
				  psmt.setString(21, sch_cnt_contact);
				  psmt.setString(22, sch_cnt_email);
				  
				  int i = psmt.executeUpdate();
				  if(i>0)
				  {
					  RequestDispatcher rd=request.getRequestDispatcher("school_home.jsp");
					  rd.forward(request, response);
				  }
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
		

}
