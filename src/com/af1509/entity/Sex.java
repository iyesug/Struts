package com.af1509.entity;

public class Sex {
	
	private String sexKey;
	private String sexValue;
	public String getSexKey() {
		return sexKey;
	}
	public void setSexKey(String sexKey) {
		this.sexKey = sexKey;
	}
	public String getSexValue() {
		return sexValue;
	}
	public void setSexValue(String sexValue) {
		this.sexValue = sexValue;
	}
	public Sex(String sexKey, String sexValue) {
		super();
		this.sexKey = sexKey;
		this.sexValue = sexValue;
	}
	public Sex() {
		super();
		// TODO Auto-generated constructor stub
	}

}
