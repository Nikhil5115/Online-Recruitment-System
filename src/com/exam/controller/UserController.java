package com.exam.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.service.UseDaoService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.userBean.Company;


@WebServlet("/users")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UseDaoService user=new UseDaoService();
	public UserController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		List<Company> useList = user.getAllUsers();
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String jsonArray = gson.toJson(useList);
		//jsonArray ="{\"page\":1,\"total\":\"10\",\"records\":"+useList.size()+",\"rows\":"+jsonArray+"}";
		//jsonArray ="{\"rows\":"+jsonArray+"}";
		//System.out.println(jsonArray);
		response.getWriter().print(jsonArray);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	}
}
