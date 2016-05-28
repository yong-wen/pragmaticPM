package com.pspm.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pspm.entity.Bug;
import com.pspm.entity.BugStatus;
import com.pspm.entity.Module;
import com.pspm.entity.PmUser;
import com.pspm.entity.Severity;
import com.pspm.mapper.BugMapper;
import com.pspm.mapper.ProjectMapper;
import com.pspm.utils.AppConstants;

@Controller
@RequestMapping("/bug")
public class BugMgnController {
	
	@Autowired
	ProjectMapper projectMapper;
	
	@Autowired
	BugMapper bugMapper;
	
	@RequestMapping("/create")
	public String create(Model model, HttpServletRequest req){
		Bug bug = new Bug();
		bug.setServerityLvl(Severity.Medium.getLevel());
		bug.setDetectedDt(new Date());
		model.addAttribute("bug", bug);
		
		Integer projectId = getCurrProjectId(req);
		List<Module> modules = projectMapper.getTopModulesByProjId(projectId);
		model.addAttribute("modules", modules);
		
		BugStatus[] allStatus = BugStatus.values();
		model.addAttribute("statusOptions", allStatus);
		Severity[] allSeverities = Severity.values();
		model.addAttribute("severityOptions", allSeverities);
		
		
		return "bugDetail";
	}
	
	private Integer getCurrProjectId(HttpServletRequest req) {
		return (Integer) req.getSession().getAttribute(AppConstants.CURR_PROJ_ID);
	}

	@RequestMapping("/save")
	public String save(Bug bug, HttpServletRequest req){
		if(bug.getBugId()==null){
			bug.setAssignTo(getModuleDefaultAssignee(bug.getModule()));
			if(bug.getDetectedDt()==null){
				bug.setDetectedDt(new Date());
			}
			PmUser curUser = (PmUser) req.getSession().getAttribute(AppConstants.CURR_USER);
			bug.setDetectedBy(curUser);
			bug.setCreatedBy(curUser);
			bug.setCreateDt(new Date());
			bug.setProjectId(getCurProjectId(req));
			bugMapper.addBug(bug);
		}
		return "forward:/bug/createdByMe";
	}
	
	private Integer getCurProjectId(HttpServletRequest req) {
		return (Integer) req.getSession().getAttribute(AppConstants.CURR_PROJ_ID);
	}

	private PmUser getModuleDefaultAssignee(Module module) {
		PmUser moduleOwner = projectMapper.getModuleOwnerByMId(module.getModuleId());
		return moduleOwner;
	}

	@RequestMapping("/createdByMe")
	public String createdByMe(Bug bug, Model model){
		
		return "bugList";
	}
}