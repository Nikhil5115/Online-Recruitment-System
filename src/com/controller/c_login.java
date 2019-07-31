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
 * Servlet implementation class c_login
 */
@WebServlet("/c_login")
public class c_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public c_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		// TODO Auto-generated method stub
		doGet(request, response);
		String str=request.getParameter("submit");
		if(str.equalsIgnoreCase("log in"))
		{
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			System.out.println(uname);
			System.out.println(pass);
			
			if(uname!="" && pass!="")
			{
				try
				{
					DBConnection db=new DBConnection();
					Connection conn=db.GetConnection();
					String sql="select * from company_master where c_email=? and c_pass=?";
					PreparedStatement pst=conn.prepareStatement(sql);
					
					pst.setString(1, uname);
					pst.setString(2, pass);
					
					ResultSet rs=pst.executeQuery();
					
					if(rs.next())
					{
						String cname=rs.getString("c_name");
						int cid=rs.getInt("c_id");
					
						System.out.println(cname);
						HttpSession session=request.getSession(true);
						session.setAttribute("cid", cid);
						session.setAttribute("cname",cname);
						System.out.println("Hello");
						//request.getRequestDispatcher("company/company_home.jsp").forward(request, response);
						response.sendRedirect("company/company_home.jsp");
						System.out.println("Hello");
					}
					else
					{
						request.getRequestDispatcher("../login_1.jsp").forward(request, response);
					}
					
				}
				catch(Exception e)
				{
					
				}
			}
			else
			{
				request.getRequestDispatcher("../login.jsp").forward(request, response);
			}
		}
	
	}

}
