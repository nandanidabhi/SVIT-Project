package com.controller;

import java.io.IOException;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Dbutil;

/**
 * Servlet implementation class CampEvent
 */

public class CampEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CampEvent() {
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
		Dbutil d = new Dbutil();
		c = d.gConnection();
		
		String cmp_Title=request.getParameter("cmp_Title");
		System.out.println(cmp_Title);
		String purpose=request.getParameter("purpose");
		String cmp_TitleOth_camp=request.getParameter("cmp_TitleOth_camp");
		String start_date=request.getParameter("start_date");
		String end_date=request.getParameter("end_date");
		String location=request.getParameter("location");
		String participants=request.getParameter("participants");
		 Date dt = null;
		 Date dt1 = null;
		
		
		   dt=Date.valueOf(start_date);
			  dt1=Date.valueOf(end_date);
		try
		{
			int lid=0;
			  PreparedStatement fid = c.prepareStatement("select Max(id) from activity_list_camp");
			  ResultSet rst = fid.executeQuery();
			  
			  if(rst.next())
				  lid = rst.getInt(1);
			  
			  	String cmp_Cid = "CMP"; 
			  			cmp_Cid += String.valueOf(lid+1);
			
			PreparedStatement pms = c.prepareStatement("insert into activity_list_camp values(?,?,?,?,?,?,?,?,?)");
			
			pms.setInt(1, 0);
			pms.setString(2, cmp_Title);
			pms.setString(3, cmp_TitleOth_camp);
			pms.setString(4, purpose);
			pms.setDate(5, dt);
			pms.setDate(6, dt1);
			pms.setString(7, location);
			pms.setString(8, participants);
			pms.setString(9, cmp_Cid);
			
			int i = pms.executeUpdate();
	    	  if(i>0)
	    	  {
	    		  RequestDispatcher rd=request.getRequestDispatcher("school_home.jsp");
          	  rd.forward(request, response);
	    	  }
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		//cmp_Title
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
