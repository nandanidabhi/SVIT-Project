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

/**
 * Servlet implementation class contactus
 */
public class contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactus() {
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
		
	String n=	request.getParameter("name");
	String email=	request.getParameter("email");
	String phone_us=	request.getParameter("phone_us");
	String description=	request.getParameter("description");
		
		
		Dbutil d=new Dbutil();
		
		Connection c;
		c=d.gConnection();
		try {
			PreparedStatement ps=c.prepareStatement("insert into contact(name,email,phone_us,description) values(?,?,?,?)");
			ps.setString(1, n);
			ps.setString(2, email);
			ps.setString(3, phone_us);
			ps.setString(4, description);
	int i=		ps.executeUpdate();
	
	if(i>0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("contactus.jsp");
		rd.forward(request, response);
	}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		doGet(request, response);
	}

}
