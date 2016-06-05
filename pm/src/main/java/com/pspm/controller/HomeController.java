package com.pspm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pspm.entity.Bug;
import com.pspm.mapper.BugMapper;
import com.pspm.utils.SessionUtils;

@Controller
public class HomeController {
	
	@Autowired
	BugMapper bugMapper;
	
	@RequestMapping("/home")
	public String home(Model model, HttpServletRequest req){
		Integer projectId = SessionUtils.getCurProjectId(req);
		String userId = SessionUtils.getCurrentUserId(req);
		
		Integer totalBugCnt = bugMapper.cntUnresolvedBugs(projectId);
		model.addAttribute("totalBugCnt", totalBugCnt);
		
		//web端
		Integer serverModuleId = 1;
		Integer bugCntWeb = bugMapper.cntUnresolvedInModule(projectId, serverModuleId);
		model.addAttribute("serverEndCnt", bugCntWeb);
		model.addAttribute("serverModuleId", serverModuleId);
		//Android端
		Integer androidModuleId = 2;
		Integer bugCntAndriod = bugMapper.cntUnresolvedInModule(projectId, androidModuleId);
		model.addAttribute("androidEndCnt", bugCntAndriod);
		model.addAttribute("androidModuleId", androidModuleId);
		//iOS端
		Integer iOSModuleId = 3;
		Integer bugCntIOs = bugMapper.cntUnresolvedInModule(projectId, iOSModuleId);
		model.addAttribute("iOSEndCnt", bugCntIOs);
		model.addAttribute("iOSModuleId", iOSModuleId);
		//created by me
		Integer cntCreateByMe = bugMapper.cntUnresolvedByCreator(projectId, userId);
		model.addAttribute("createdByMeCnt", cntCreateByMe);
		
		Integer rowCnt = 3;
		List<Bug> assignedToMe = bugMapper.listBugAssignedToMe(projectId, userId, rowCnt);
		model.addAttribute("assignedToMeList", assignedToMe);
		
		Integer assignToMeCnt = bugMapper.cntAssignToMe(projectId, userId);
		model.addAttribute("assignToMeCnt", assignToMeCnt);
		
		return "dashboard";
	}
}
