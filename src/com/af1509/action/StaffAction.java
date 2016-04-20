package com.af1509.action;

import java.util.ArrayList;
import java.util.List;

import com.af1509.entity.Sex;
import com.af1509.entity.Staff;

public class StaffAction {
	
	private Staff staff;
	
	private List<Staff> stafflist;
	
	private List<String> deptList;
	private List<String> posList;
	
	private List<Sex> sexList;
	
	private List<String> allLoveList;
	
	private List<String> myLoveList;
	
	public StaffAction(){
		allLoveList=new ArrayList<String>();
		allLoveList.add("运动");
		allLoveList.add("吃饭");
		allLoveList.add("睡觉");
		allLoveList.add("打豆豆");
		
		myLoveList=new ArrayList<String>();
		myLoveList.add("运动");
		myLoveList.add("睡觉");	
		
		stafflist =new ArrayList<Staff>();
		stafflist.add(new Staff("01","小猫","研发部","软工","男"));
		stafflist.add(new Staff("02","小猫1","研发部","软工","男"));
		stafflist.add(new Staff("03","小猫2","研发部","软工","女"));
		stafflist.add(new Staff("04","小猫3","测试部","工程师","男"));
		stafflist.add(new Staff("05","小猫4","测试部","测试员","女"));
		stafflist.add(new Staff("06","小猫5","财务部","出纳","女"));	
		
		deptList =new ArrayList<String>();
		deptList.add("研发部");
		deptList.add("测试部");
		deptList.add("财务部");
		deptList.add("市场部");
		
		posList =new ArrayList<String>();
		posList.add("软工");
		posList.add("工程师");
		posList.add("出纳");
		posList.add("测试员");
		posList.add("文员");
		posList.add("前台");
		
		sexList=new ArrayList<Sex>();
		sexList.add(new Sex("男","男性"));
		sexList.add(new Sex("女","女性"));
		sexList.add(new Sex("中","中性"));
	}
	
	

	public List<String> getDeptList() {
		return deptList;
	}

	public void setDeptList(List<String> deptList) {
		this.deptList = deptList;
	}

	public List<String> getPosList() {
		
		return posList;
	}

	public void setPosList(List<String> posList) {
		this.posList = posList;
	}

	public String findAll(){
		staff=new Staff("007", "小名同学", "军情6处", "特工", "男");
		return "success";
	}
	public String execute(){
		return "add";
	}

	public String findById(){
		String id=staff.getStaffid();
		for(Staff st:stafflist){
			if(st.getStaffid().equals(id)){
				staff=st;
				return "find";
			}
		}
		return "input";
	}

	
	public String update(){
		return "success";
	}
	
	public String add(){
		return "success";
	}
	
	public String delete(){
		return "success";
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	public List<Staff> getStafflist() {
		return stafflist;
	}

	public void setStafflist(List<Staff> stafflist) {
		this.stafflist = stafflist;
	}
	
	private String result;
	
	public String isExist(){
		String id=staff.getStaffid();
		for(Staff st:stafflist){
			if(st.getStaffid().equals(id)){	
				result="yes";
				staff =st;
				return "exist";
			}
		}
		result="no";
		return "exist";		
	}



	public String getResult() {
		return result;
	}



	public void setResult(String result) {
		this.result = result;
	}



	public List<Sex> getSexList() {
		return sexList;
	}



	public void setSexList(List<Sex> sexList) {
		this.sexList = sexList;
	}



	public List<String> getAllLoveList() {
		return allLoveList;
	}



	public void setAllLoveList(List<String> allLoveList) {
		this.allLoveList = allLoveList;
	}



	public List<String> getMyLoveList() {
		return myLoveList;
	}



	public void setMyLoveList(List<String> myLoveList) {
		this.myLoveList = myLoveList;
	}




	
}
