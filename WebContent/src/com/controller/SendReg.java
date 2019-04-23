package com.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Dbutil;


/**
 * Servlet implementation class SendPass
 */
public class SendReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	 
    /**
     * @see HttpServlet#HttpServlet()
     */
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
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
	
		
		//String Email = request.getParameter("Email");
		Dbutil d=new Dbutil();
		Connection c;
		c=d.gConnection();
		String password=null;
		String username	=null;
		String Email=null;


		try {
			 Email=request.getParameter("email");
			 username=request.getParameter("volunteer_name");
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		String resultMessage = "";

		try {
			String message="Hi "+username+"\nWelcome to I-Volunteer service:\n You have registered successfully at our website.\nNow you can explore more by logging in our website";
			String register="i-Volunteer Registered";
			EmailUtilityReg.sendEmail(host, port, user, pass,Email,register,message);
			
			resultMessage = "The e-mail was sent successfully";
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		} finally {
			request.setAttribute("Message", resultMessage);
			getServletContext().getRequestDispatcher("/vol_reg.java").forward(
					request, response);
		}
		doGet(request, response);
	}
		
		
	

}
