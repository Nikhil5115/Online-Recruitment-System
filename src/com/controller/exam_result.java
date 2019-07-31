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
 * Servlet implementation class exam_result
 */
@WebServlet("/exam_result")
public class exam_result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public exam_result() {
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
		String grade;
		Connection conn;
		
		String str=request.getParameter("submit");
		if(str.equalsIgnoreCase("submit report"))
		{
			int correct_ans=Integer.parseInt(request.getParameter("correct"));
			int total=Integer.parseInt(request.getParameter("total"));
			int id=Integer.parseInt(request.getParameter("id"));
			
			int result=(correct_ans/total)*100;
			
			if(result>=50)
			{
				grade="pass";
			}
			else
			{
				grade="fail"; 
			}
			try {
			DBConnection db=new DBConnection();
			
				conn=db.GetConnection();
			
			String sql="insert into result(user_id,result,status) values(?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.setString(2, grade);
			pst.setInt(3, 1);
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Result Submitted");
			}
			else
			{
				System.out.println("Failed");
			}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("user_home.jsp");
		}
	}

}
