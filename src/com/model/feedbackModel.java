package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.db.DBConnection;
import com.userBean.Feedback;
import com.userBean.User;

public class feedbackModel {

	public void addFeedback(Feedback f) {
		// TODO Auto-generated method stub
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			String sql="insert into feedback(f_name,f_email,f_phone,f_msg) values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, f.getName());
			pst.setString(2, f.getEmail());
			pst.setString(3, f.getPhone());
			pst.setString(4, f.getMsg());
			
			
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
	public ArrayList<Feedback> getAllFeedback()
	{
		ArrayList<Feedback> user=new ArrayList<Feedback>();
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			
			String sql="select * from feedback";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while (rs.next())
			{
				Feedback u=new Feedback();
				u.setId(rs.getInt("f_id"));
				u.setName(rs.getString("f_name"));
				u.setEmail(rs.getString("f_email"));
				u.setPhone(rs.getString("f_phone"));
				u.setMsg(rs.getString("f_msg"));
				user.add(u);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return user;
	}

	public void deleteFeedbackById(int id) {
		// TODO Auto-generated method stub
		
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			String sql="delete from feedback where f_id=?";
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

	
	

