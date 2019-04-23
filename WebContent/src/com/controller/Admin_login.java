package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Dbutil;

/**
 * Servlet implementation class Admin_login
 */
public class Admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_login() {
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
	
		
		String uname=request.getParameter("username");
		String upass=request.getParameter("password");
		
		Dbutil d=new Dbutil();
		Connection c;
	c=	d.gConnection();
		 
		try {
			PreparedStatement	ps = c.prepareStatement("select * from admin_login where username=? and password=?");
	ps.setString(1, uname);
	ps.setString(2, upass);

	ResultSet r=		ps.executeQuery();
	boolean b=false;
		 b=r.next();
		 System.out.println(b+uname+upass);
		if(b==true)
		{
			RequestDispatcher rd=request.getRequestDispatcher("admin_p.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
			rd.forward(request, response);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
