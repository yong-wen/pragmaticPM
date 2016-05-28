package com.pspm.entity;

public enum Severity {
	
	Minor(1,"不严重"), Medium(2,"一般"), Major(3,"严重");
	
	private Severity(int code, String name){
		this.code = code;
		this.name = name;
	}
	private int code;
	private String name;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public static Severity findByLevel(int lvlVal){
		Severity[] all = Severity.values();
		for(Severity s: all){
			if(s.getCode() == lvlVal){
				return s;
			}
		}
		return null;
	}
	
}
