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

import com.oracle.jrockit.jfr.RequestDelegate;
import com.util.Dbutil;

/**
 * Servlet implementation class delete
 */
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		Dbutil d=new Dbutil();
		Connection c;
		c=d.gConnection();
		String id=request.getParameter("id");
		
		
		
		
		try {
			PreparedStatement p=c.prepareStatement("select username from volentier where id=?");
			p.setInt(1, Integer.parseInt(id));
	        ResultSet r=  p.executeQuery();
			String unmae = null;
			HttpSession s=request.getSession();
			
			while(r.next())
			{
				
			unmae=	r.getString("username");
		
			}
			PreparedStatement ps=c.prepareStatement("delete from volentier where id=?");
			ps.setInt(1, Integer.parseInt(id));
			int i=ps.executeUpdate();
			
			
		

			
			PreparedStatement p1=c.prepareStatement("insert into delete_record values(?,?)");
			p1.setString(1, unmae);
			p1.setString(2, "deactive");
			
			
			p1.executeUpdate();
			if(i>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("table.jsp");
				rd.forward(request, response);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
