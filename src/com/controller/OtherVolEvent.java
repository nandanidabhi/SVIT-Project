package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Dbutil;

/**
 * Servlet implementation class OtherVolEvent
 */
public class OtherVolEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtherVolEvent() {
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
		
		Connection c;
		Dbutil d=new Dbutil();
		c=d.gConnection();
		//int title= request.("title");
		String vol_title=request.getParameter("vol_title");
		String volunteer_type=request.getParameter("volunteer_type");
		String start_date=request.getParameter("start_date");
		String end_date=request.getParameter("end_date");
		String location=request.getParameter("location");
		String description=request.getParameter("description");
		
		try
		{
			PreparedStatement pms=c.prepareStatement("insert into activity_list_v_other values(?,?,?,?,?,?,?)");
			
			pms.setInt(1, 0);
			pms.setString(2, vol_title);
			pms.setString(3, volunteer_type);
			pms.setString(4, start_date);
			pms.setString(5, end_date);
			pms.setString(6, location);
			pms.setString(7, description);
			
			int i = pms.executeUpdate();	
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		//doGet(request, response);
	}

}
