package com.pspm.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.util.StringUtils;

public class Bug {
	private Integer bugId;
	private String priority;
	private String title;
	private Module module;
	private String steps;
	private String comments;
	private BugStatus status;
	private PmUser detectedBy;
	private Date detectedDt;
	private String detectedDtStr;
	private PmUser fixedBy;
	private Date fixedDt;
	private PmUser closedBy;
	private Integer projectId;
	private PmUser assignTo;
	private Severity severity;
	private Integer serverityLvl;
	private PmUser createdBy;
	private Date createDt;
	
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
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
	public BugStatus getStatus() {
		return status;
	}
	public void setStatus(BugStatus status) {
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
	public Integer getServerityLvl() {
		return serverityLvl;
	}
	public void setServerityLvl(Integer serverityLvl) {
		this.serverityLvl = serverityLvl;
		if(serverityLvl!=null){
			this.severity = Severity.findByLevel(serverityLvl);
		}
	}
	public String getDetectedDtStr() {
		return detectedDtStr;
	}
	public void setDetectedDtStr(String detectedDtStr) {
		if(!StringUtils.isEmpty(detectedDtStr)){
			try {
				this.detectedDt = sdf.parse(detectedDtStr);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		this.detectedDtStr = detectedDtStr;
	}
	public PmUser getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(PmUser createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreateDt() {
		return createDt;
	}
	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}
	public Severity getSeverity() {
		return severity;
	}
	public void setSeverity(Severity severity) {
		this.severity = severity;
	}
	
	
}
