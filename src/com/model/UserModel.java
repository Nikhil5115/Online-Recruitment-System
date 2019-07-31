package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.db.DBConnection;
import com.userBean.User;

public class UserModel {

	public void addUser(User user) {
		
		try
		{
			
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			String sql="insert into user_master(fname,lname,email,pass,mobile,gender,dob,country,state,city,address,exp,edu,skill) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, user.getFname());
			pst.setString(2, user.getLname());
			pst.setString(3, user.getEmail());
			pst.setString(4, user.getPass());
			pst.setString(5, user.getMobile());
			pst.setString(6, user.getGender());
			pst.setString(7, user.getDob());
			pst.setString(8, user.getCountry());
			pst.setString(9, user.getState());
			pst.setString(10, user.getCity());
			pst.setString(11, user.getAddress());		
			pst.setString(12, user.getExp());
			pst.setString(13, user.getEdu());
			pst.setString(14, user.getSkill());
		
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Success");
			}
			else
			{
				System.out.println("Failed");
			}
		}catch(Exception e)
		
		{
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<User> getAllUser()
	{
		ArrayList<User> user=new ArrayList<User>();
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			
			String sql="select * from user_master";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while (rs.next())
			{
				User u=new User();
				u.setId(rs.getInt("id"));
				u.setFname(rs.getString("fname"));
				u.setLname(rs.getString("lname"));
				u.setEmail(rs.getString("email"));
				u.setPass(rs.getString("pass"));
				u.setMobile(rs.getString("mobile"));
				u.setGender(rs.getString("gender"));
				u.setDob(rs.getString("dob"));
				u.setCountry(rs.getString("country"));
				u.setState(rs.getString("state"));
				u.setCity(rs.getString("city"));
				u.setAddress(rs.getString("address"));
				u.setExp(rs.getString("exp"));
				u.setEdu(rs.getString("edu"));
				u.setSkill(rs.getString("skill"));
				user.add(u);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return user;
	}

	public void deleteUserById(int id) {
		// TODO Auto-generated method stub
		
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			String sql="delete from user_master where id=?";
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
