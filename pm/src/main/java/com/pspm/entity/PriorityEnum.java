package com.pspm.entity;

public enum PriorityEnum {
	LOW(1, "低"), MEDIUM(2, "中"), HIGH(3, "高");
	
	private PriorityEnum(Integer cd, String nm){
		this.code = cd;
		this.name = nm;
	}
	private Integer code;
	private String name;
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
