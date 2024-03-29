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
 * Servlet implementation class loginAdmin
 */
@WebServlet("/loginAdmin")
public class loginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginAdmin() {
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
		String uname;
		String pass;
		String str=request.getParameter("submit");
		if(str.equalsIgnoreCase("log in"))
		{
			uname=request.getParameter("uname");
			pass=request.getParameter("pass");
			
			try
			{
				DBConnection db=new DBConnection();
				Connection conn=db.GetConnection();
				String sql="select * from admin_master where admin_uname=? and admin_pass=?";
				PreparedStatement pst=conn.prepareStatement(sql);
				pst.setString(1, uname);
				pst.setString(2, pass);
				ResultSet rs=pst.executeQuery();
				if(rs.next())
				{
					HttpSession session=request.getSession(true);
					session.setAttribute("uname", uname);
					response.sendRedirect("admin/admin_home.jsp");					
				}
				else
				{
					request.getRequestDispatcher("admin/login.jsp").forward(request, response);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

}
