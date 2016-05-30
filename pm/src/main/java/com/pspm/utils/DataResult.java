package com.pspm.utils;

public class DataResult {
	private boolean succeed = true;
	private String msg;
	
	public DataResult(boolean processOk){
		this.succeed = processOk;
	}

	public boolean isSucceed() {
		return succeed;
	}

	public void setSucceed(boolean succeed) {
		this.succeed = succeed;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
