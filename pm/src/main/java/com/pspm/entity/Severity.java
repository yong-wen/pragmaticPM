package com.pspm.entity;

public enum Severity {
	
	Minor(1,"不严重"), Medium(2,"一般"), Major(3,"严重");
	
	private Severity(Integer level, String name){
		this.level = level;
		this.name = name;
	}
	private Integer level;
	private String name;
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
