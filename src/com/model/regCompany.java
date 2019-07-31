package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.db.DBConnection;
import com.userBean.com_reg;

public class regCompany {

	public void addNewCompany(com_reg c) {
		// TODO Auto-generated method stub
		
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			String sql="insert into company_master(c_name,c_email,c_pass,c_contact,c_country,c_state,c_city,c_address) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, c.getCname());
			pst.setString(2, c.getEmail());
			pst.setString(3, c.getPass());
			pst.setString(4, c.getContact());
			pst.setString(5, c.getCountry());
			pst.setString(6, c.getState());
			pst.setString(7, c.getCity());
			pst.setString(8, c.getAddress());
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Success");
			}
			else
			{
				System.out.println("Fail");
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	
}
