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
import javax.servlet.http.HttpSession;

import com.util.Dbutil;

/**
 * Servlet implementation class login_validate
 */
public class login_validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_validate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uname=request.getParameter("name");
		
		String password=request.getParameter("password");
		
		String la=request.getParameter("loginas");
		System.out.println(uname+la);
		Connection c;
		Dbutil d=new Dbutil();
		c=d.gConnection();
		PreparedStatement p;
		try {
			p = c.prepareStatement("select * from login_table where username=? and password=? and login_as=?");
			p.setString(1, uname);
			p.setString(2, password);
			p.setString(3, la);
			
		ResultSet r=	p.executeQuery();
		boolean s1=false;
	 s1=	r.next();
		
		
		
		System.out.println("test"+s1);
		String cid=	r.getString("c_id");
		HttpSession s=request.getSession();
		s.setAttribute("uname", uname);
		s.setAttribute("cid_test", cid);
		System.out.println("test"+s1);
	/*	
	String e=	r.getString("email");
		s.setAttribute("Email", e);*/
			if(r!=null && la.equals("volunteer"))
			{
				
				
			
				
			
				RequestDispatcher rd=request.getRequestDispatcher("volunteer_home.jsp");
					rd.forward(request, response);
				}
			else if(r!=null && la.equals("school"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("school_home.jsp");
				rd.forward(request, response);
			}
			else 
				
			{
				System.out.println(s1);
				RequestDispatcher rd=request.getRequestDispatcher("login_form.jsp");
				rd.forward(request, response);
				
			}
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		doGet(request, response);
	}

}
