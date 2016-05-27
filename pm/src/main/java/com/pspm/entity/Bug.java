package com.pspm.entity;

import java.util.Date;

public class Bug {
	private Integer bugId;
	private String priority;
	private String title;
	private Module module;
	private String steps;
	private String comments;
	private String status;
	private PmUser detectedBy;
	private Date detectedDt;
	private PmUser fixedBy;
	private Date fixedDt;
	private PmUser closedBy;
	private Integer projectId;
	private PmUser assignTo;
	
	public Integer getBugId() {
		return bugId;
	}
	public void setBugId(Integer bugId) {
		this.bugId = bugId;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSteps() {
		return steps;
	}
	public void setSteps(String steps) {
		this.steps = steps;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public PmUser getDetectedBy() {
		return detectedBy;
	}
	public void setDetectedBy(PmUser detectedBy) {
		this.detectedBy = detectedBy;
	}
	public Date getDetectedDt() {
		return detectedDt;
	}
	public void setDetectedDt(Date detectedDt) {
		this.detectedDt = detectedDt;
	}
	public PmUser getFixedBy() {
		return fixedBy;
	}
	public void setFixedBy(PmUser fixedBy) {
		this.fixedBy = fixedBy;
	}
	public Date getFixedDt() {
		return fixedDt;
	}
	public void setFixedDt(Date fixedDt) {
		this.fixedDt = fixedDt;
	}
	public PmUser getClosedBy() {
		return closedBy;
	}
	public void setClosedBy(PmUser closedBy) {
		this.closedBy = closedBy;
	}
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	public PmUser getAssignTo() {
		return assignTo;
	}
	public void setAssignTo(PmUser assignTo) {
		this.assignTo = assignTo;
	}
	
	
}
