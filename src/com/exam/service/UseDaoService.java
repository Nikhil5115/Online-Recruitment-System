package com.exam.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.annotation.WebServlet;

import com.userBean.Company;



public class UseDaoService {

	
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/online_recruitment";

	public List<Company> getAllUsers() {

		Connection conn = null;
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, "root", "");
			final String query = "SELECT * FROM job_master";
			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery(query);
			List<Company> userList = new ArrayList<Company>();

			while (rs.next()) {
				int cid = rs.getInt("c_id");
				String skill = rs.getString("c_skill");
				String vacancy = rs.getString("c_vacancy");
				String location = rs.getString("c_location");
				String exp = rs.getString("c_exp");
				String salary = rs.getString("c_sal");
				String job_desc = rs.getString("c_desc");
				userList.add(new Company(cid,skill,vacancy,location, exp,salary,job_desc));
			}
			return userList;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return Collections.emptyList();
		} catch (SQLException e) {
			e.printStackTrace();
			return Collections.emptyList();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
