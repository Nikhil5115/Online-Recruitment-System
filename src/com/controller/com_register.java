package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserModel;
import com.model.regCompany;
import com.userBean.com_reg;

/**
 * Servlet implementation class com_register
 */
@WebServlet("/com_register")
public class com_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public com_register() {
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
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String str=request.getParameter("submit");
		if(str.equalsIgnoreCase("register"))
		{
		/*System.out.println(str);*/
		
		
		String cname=request.getParameter("cname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String mobile=request.getParameter("mobile");
		
		
		if(cname!="" && email!="" && pass!="" && mobile!="" )
		{com_reg c=new com_reg();
		c.setCname(request.getParameter("cname"));
		c.setEmail(request.getParameter("email"));
		c.setPass(request.getParameter("pass"));
		c.setContact(request.getParameter("mobile"));
		c.setCountry(request.getParameter("country"));
		c.setState(request.getParameter("state"));
		c.setCity(request.getParameter("city"));
		c.setAddress(request.getParameter("address"));

		regCompany reg=new regCompany();
		
		
		reg.addNewCompany(c);
		
		response.sendRedirect("login_1.jsp");
	}else
	{
		String error="PLease Enter The Full Detail To Get Login Access";
		request.setAttribute("error", error);
		request.getRequestDispatcher("Company_reg.jsp").forward(request, response);
	}
		}
	}
}
		/*regCompany reg=new regCompany();
		reg.addNewCompany(c);
		response.sendRedirect("login_1.jsp");
		*/
	

