package com.userBean;

import java.io.Serializable;

public class Company implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int cid;
	private String skill;
	private String vacancy;
	private String location;
	private String exp;
	private String salary;
	private String job_desc;
	
	
	
	
	public Company() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Company(String skill, String vacancy, String location,String exp, String salary, String job_desc) {
		super();
		this.skill = skill;
		this.vacancy = vacancy;
		this.location = location;
		this.exp = exp;
		this.salary = salary;
		this.job_desc = job_desc;
	}

	public Company(int cid, String skill, String vacancy, String location,String exp, String salary, String job_desc) {
		super();
		this.cid=cid;
		this.skill = skill;
		this.vacancy = vacancy;
		this.location = location;
		this.exp = exp;
		this.salary = salary;
		this.job_desc = job_desc;
	}
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getVacancy() {
		return vacancy;
	}
	public void setVacancy(String vacancy) {
		this.vacancy = vacancy;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getJob_desc() {
		return job_desc;
	}
	public void setJob_desc(String job_desc) {
		this.job_desc = job_desc;
	}
	
	

}
