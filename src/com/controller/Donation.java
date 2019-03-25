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
 * Servlet implementation class Donation
 */
public class Donation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Donation() {
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
		
		// firstname,
		String firstname = request.getParameter("f_name");
		String lastname = request.getParameter("l_name");
		String contact = request.getParameter("contact");
		String email_id = request.getParameter("email_id");
		String gender = request.getParameter("gender");
		String don_address = request.getParameter("don_address");
		String state = request.getParameter("state");
		String pincode = request.getParameter("pincode");
		String a_no = request.getParameter("a_no");
		String Currency = request.getParameter("Currency");
		String Amount = request.getParameter("Amount");
		String donation_used = request.getParameter("donation_used");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try
		{
	PreparedStatement psmt=	c.prepareStatement("insert into donation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	psmt.setInt(1, 0);
		psmt.setString(2, firstname);
		psmt.setString(3, lastname);
		
		psmt.setString(4, contact);
		psmt.setString(5, email_id);
		psmt.setString(6, gender);
		psmt.setString(7, don_address);
		psmt.setString(8, state);
		psmt.setString(9, pincode);
		
		psmt.setString(10, a_no);
		psmt.setString(11, Currency);
		psmt.setString(12, Amount);
		psmt.setString(13, donation_used);
		psmt.setString(14, username);
		psmt.setString(15, password);
		
		
	int i=	psmt.executeUpdate();
		if(i>0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("donation.jsp");
			  rd.forward(request, response);
		}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//String firstname = 
		//doGet(request, response);
	}

}
