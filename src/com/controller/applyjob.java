package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DBConnection;

/**
 * Servlet implementation class applyjob
 */
@WebServlet("/applyjob")
public class applyjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public applyjob() {
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
		Connection conn;
		int job_id=Integer.parseInt(request.getParameter("job_id"));
		int company_id=Integer.parseInt(request.getParameter("c_id"));
		int app_id=Integer.parseInt(request.getParameter("app_id"));
		
		System.out.println(job_id);
		System.out.println(company_id);
		System.out.println(app_id);
		
		try
		{
			DBConnection db=new DBConnection();
			conn=db.GetConnection();
			String sql="insert into apply_job(app_id,company_id,job_id,status) values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, app_id);
			pst.setInt(2, company_id);
			pst.setInt(3, job_id);
			pst.setInt(4, 1);
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				request.setAttribute("msg", "Apply Successfully");
				System.out.println("Applied Job Successfully");
				//response.sendRedirect("user_home.jsp");
				request.getRequestDispatcher("user_home.jsp").forward(request, response);
			}
			else
			{
				System.out.println("Failed");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		response.sendRedirect("user_home.jsp");
	}

}
