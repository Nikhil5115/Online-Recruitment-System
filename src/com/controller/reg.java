package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserModel;
import com.userBean.User;

/**
 * Servlet implementation class reg
 */
@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg() {
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
				
				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				
				System.out.println("Hello");
				String str=request.getParameter("submit");
				if(str.equalsIgnoreCase("register"))
				{
					String fname=request.getParameter("fname");
					String lname=request.getParameter("lname");
					String email=request.getParameter("email");
					String pass=request.getParameter("pass");
					String mobile=request.getParameter("mobile");
					String dob=request.getParameter("dob");
					String exp=request.getParameter("exp");
					String edu=request.getParameter("edu");
					String skill=request.getParameter("skill");
					
					if(fname!="" && lname!="" && email!="" && pass!="" && mobile!="" && dob!="" && exp!="" && edu!="" && skill!="")
					{
						User user=new User();
						
						user.setFname(request.getParameter("fname"));
						user.setLname(request.getParameter("lname"));
						user.setEmail(request.getParameter("email"));
						user.setPass(request.getParameter("pass"));
						user.setMobile(request.getParameter("mobile"));
						user.setGender(request.getParameter("gen"));
						user.setDob(request.getParameter("dob"));
						user.setAddress(request.getParameter("address"));
						user.setCountry(request.getParameter("country"));
						user.setState(request.getParameter("state"));
						user.setCity(request.getParameter("city"));
						user.setExp(request.getParameter("exp"));
						user.setEdu(request.getParameter("edu"));
						user.setSkill(request.getParameter("skill"));
						
						/*System.out.println(request.getParameter("fname"));
						System.out.println(request.getParameter("lname"));
						System.out.println(request.getParameter("email"));
						System.out.println(request.getParameter("pass"));
						System.out.println(request.getParameter("mobile"));
						System.out.println(request.getParameter("gen"));
						System.out.println(request.getParameter("dob"));
						System.out.println(request.getParameter("address"));
						System.out.println(request.getParameter("country"));
						System.out.println(request.getParameter("state"));
						System.out.println(request.getParameter("city"));
						System.out.println(request.getParameter("exp"));
						System.out.println(request.getParameter("edu"));
						System.out.println(request.getParameter("skill"));*/
						
						UserModel um=new UserModel();
						
						um.addUser(user);
						
						response.sendRedirect("login.jsp");
					}
					else
					{
						String error="PLease Enter The Full Detail To Get Login Access";
						request.setAttribute("error", error);
						request.getRequestDispatcher("register.jsp").forward(request, response);
					}
				
					
					
				}
	}

}
