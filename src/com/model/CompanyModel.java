package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.db.DBConnection;
import com.userBean.Company;
import com.userBean.User;

public class CompanyModel {

	public void addCompany(Company c) {
		// TODO Auto-generated method stub
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			String sql="insert into job_master(c_id,c_skill,c_vacancy,c_location,c_exp,c_sal,c_desc) values(?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setInt(1, c.getCid());
			pst.setString(2, c.getSkill());
			pst.setString(3, c.getVacancy());
			pst.setString(4, c.getLocation());
			pst.setString(5, c.getExp());
			pst.setString(6, c.getSalary());
			pst.setString(7, c.getJob_desc());
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Success");
			}
			else
			{
				System.out.println("Failed");
			}
		}
		catch(Exception e)
		{
			
		}
		
	}

	public ArrayList<Company> getAllCompany()
	{
		ArrayList<Company> user=new ArrayList<Company>();
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			
			String sql="select * from job_master";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while (rs.next())
			{
				Company u=new Company();
				u.setCid(rs.getInt("c_id"));
				u.setSkill(rs.getString("c_skill"));
				u.setVacancy(rs.getString("c_vacancy"));
				u.setLocation(rs.getString("c_location"));
				u.setExp(rs.getString("c_exp"));
				u.setSalary(rs.getString("c_sal"));
				u.setJob_desc(rs.getString("c_desc"));
				
				
				user.add(u);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return user;
	}

	public void deleteCompanyById(int id) {
		// TODO Auto-generated method stub
		
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			String sql="delete from job_master where c_id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
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
