package com.af1509.entity;

public class Staff {
	private String staffid;
	private String name;
	private String dept;
	private String positon;
	private String sex;
	public String getStaffid() {
		return staffid;
	}
	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPositon() {
		return positon;
	}
	public void setPositon(String positon) {
		this.positon = positon;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Staff(String staffid, String name, String dept, String positon,
			String sex) {
		super();
		this.staffid = staffid;
		this.name = name;
		this.dept = dept;
		this.positon = positon;
		this.sex = sex;
	}
	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Staff [staffid=" + staffid + ", name=" + name + ", dept="
				+ dept + ", positon=" + positon + ", sex=" + sex + "]";
	}
	
	
	
}
