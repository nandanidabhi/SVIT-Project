package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Dbutil;

/**
 * Servlet implementation class TeacherEvent
 */
public class TeacherEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherEvent() {
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
		
		Connection c;
		Dbutil d=new Dbutil();
		c=d.gConnection();
		//int title= request.("title");
		String activity_title=request.getParameter("activity_title");
		String med=request.getParameter("med");
		String subject =request.getParameter("apply_for");
		String content=request.getParameter("content");
		String start_date=request.getParameter("start_date");
		String end_date=request.getParameter("end_date");
		String location=request.getParameter("location");
		String description=request.getParameter("description");
		
		try
		{
		
				
				  PreparedStatement psmt=c.prepareStatement("insert into activity_list_teacher values(?,?,?,?,?,?,?,?,?)");
				  
				  psmt.setInt(1, 0);
				  psmt.setString(2,activity_title);
				  psmt.setString(3,med);
				  psmt.setString(4,subject);
				  psmt.setString(5,content);
				  psmt.setString(6,start_date);
				  psmt.setString(7,end_date);
				  psmt.setString(8,location);
				  psmt.setString(9,description);
				  
				  int i = psmt.executeUpdate();
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
		
		// TODO Auto-generated method stub
	//	doGet(request, response);
	}

}
