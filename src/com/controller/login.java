package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBConnection;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		doGet(request, response);
		String str=request.getParameter("submit");
		if(str.equalsIgnoreCase("log in"))
		{
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			
			if(uname!="" && pass!="")
			{
				try
				{
					DBConnection db=new DBConnection();
					Connection conn=db.GetConnection();
					String sql="select * from user_master where email=? and pass=?";
					PreparedStatement pst=conn.prepareStatement(sql);
					
					pst.setString(1, uname);
					pst.setString(2, pass);
					
					ResultSet rs=pst.executeQuery();
					
					if(rs.next())
					{
						String fname=rs.getString("fname");
						String lname=rs.getString("lname");
						int id=rs.getInt("id");
						String skill=rs.getString("skill");
						String un=fname+lname;
						HttpSession session=request.getSession(true);
						session.setAttribute("uname",un);
						session.setAttribute("id", id);
						session.setAttribute("skill", skill);
						request.getRequestDispatcher("user_home.jsp").forward(request, response);
					}
					else
					{
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}
					
				}
				catch(Exception e)
				{
					
				}
			}
			else
			{
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
	}

}
