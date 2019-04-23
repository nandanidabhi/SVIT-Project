package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.Messaging.SyncScopeHelper;

import com.util.Dbutil;


/**
 * Servlet implementation class SendPass
 */
public class SendPass extends HttpServlet {
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
	
		
		String Email = request.getParameter("Email");
		Dbutil d=new Dbutil();
		Connection c;
		c=d.gConnection();
		String password=null;
		String username	=null;

		try {
			PreparedStatement ps=c.prepareStatement("select * from login_table where email=?");
			ps.setString(1, Email);
	ResultSet r=		ps.executeQuery();
		
		while(r.next())
		{
			password=	r.getString("password");
			username= r.getString("username");
		}
		
		System.out.println(password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		String resultMessage = "";

		try {
			String message="Hi "+username+"\nYour Password:"+password;
			EmailUtility.sendEmail(host, port, user, pass,Email,password,message);
			resultMessage = "The e-mail was sent successfully";
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		} finally {
			request.setAttribute("Message", resultMessage);
			getServletContext().getRequestDispatcher("/login_form.jsp").forward(
					request, response);
		}
		doGet(request, response);
	}
		
		
	

}
