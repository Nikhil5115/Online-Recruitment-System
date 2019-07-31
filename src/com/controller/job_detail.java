package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CompanyModel;
import com.userBean.Company;

/**
 * Servlet implementation class job_detail
 */
@WebServlet("/job_detail")
public class job_detail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public job_detail() {
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
		//System.out.println("Hello From job_detail");
		String str=request.getParameter("submit");
		Company c=new Company();
		System.out.println(Integer.parseInt(request.getParameter("cid")));
		if(str.equalsIgnoreCase("Submit job"))
		{
			c.setCid(Integer.parseInt(request.getParameter("cid")));
			c.setSkill(request.getParameter("skill"));
			c.setVacancy(request.getParameter("vacancy"));
			c.setLocation(request.getParameter("location"));
			c.setExp(request.getParameter("exp"));
			c.setSalary(request.getParameter("salary"));
			c.setJob_desc(request.getParameter("desc"));
			CompanyModel cm=new CompanyModel();
			cm.addCompany(c);
			response.sendRedirect("company/company_home.jsp");
			
		}
	}

}
