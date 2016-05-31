package com.pspm.entity;

public enum BugStatus {
	OPEN("未解决"), IN_PROGRESS("正在修改"), DECLINED("不是Bug"), FIXED("已修复"), CLOSED("已关闭"),  REOPEN("重新出现");
	
	private BugStatus(String name){
		this.name = name;
	}
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
