package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	public Connection GetConnection() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_recruitment","root","");
			
		return conn;
	}
}
