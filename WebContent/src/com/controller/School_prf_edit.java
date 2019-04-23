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
import javax.servlet.http.HttpSession;

import com.util.Dbutil;

/**
 * Servlet implementation class School_prf_edit
 */
public class School_prf_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public School_prf_edit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		
	Dbutil d1=new Dbutil();
	Connection c;
	c=d1.gConnection();
/*	PreparedStatement ps=c.prepareStatement("select * from school where SCH_CID=?");
	ps.setString(1, d);*/
	
	
		HttpSession s=request.getSession();
		String d=	(String)s.getAttribute("cid_test");
			
		
	
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
	//EmailUtility e=new EmailUtility();
	String interested=request.getParameter("interested");
	String sch_cnt_name=request.getParameter("sch_cnt_name");
	String sch_cnt_designation=request.getParameter("sch_cnt_designation");
	String sch_cnt_contact=request.getParameter("sch_cnt_contact");
	String sch_cnt_email=request.getParameter("sch_cnt_email");
	
	
	try {
		PreparedStatement ps=c.prepareStatement("update school set username=?,password=?,school_name=?,register_no=?,school_contact=?,address=?,city=?,state=?,pincode=?,medium=?,board=?,type_of_school=?,no_students=?,high_education=?,website=?,email_school=?,interested=?,sch_cnt_name=?,sch_cnt_designation=?,sch_cnt_contact=?,sch_cnt_email=? where SCH_CID=?");
	
	ps.setString(1,uname);
	ps.setString(2,password);
	ps.setString(3,school_name);
	ps.setString(4,registration_no);
	ps.setString(5,school_contact);
	ps.setString(6,sch_address);
	ps.setString(7,sch_city);
	ps.setString(8,sch_state);
	ps.setString(9,sch_pincode);
	ps.setString(10,sch_med);
	ps.setString(11,sch_board);
	ps.setString(12,sch_type);
	ps.setString(13,number_of_students);
	ps.setString(14,highest_education);
	ps.setString(15,website);
	ps.setString(16,email_school);
	ps.setString(17,interested);
	ps.setString(18,sch_cnt_name);
	ps.setString(19,sch_cnt_designation);
	ps.setString(20,sch_cnt_contact);
	ps.setString(21,sch_cnt_email);
	ps.setString(22, d);
int i=	ps.executeUpdate();
	if(i>0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("school_home.jsp");
		rd.forward(request, response);
	}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	/*PreparedStatement ps=c.prepareStatement("update school set username=?,password=?");*/
	
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
