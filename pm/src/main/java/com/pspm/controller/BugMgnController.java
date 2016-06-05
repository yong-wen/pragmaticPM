package com.pspm.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pspm.entity.Bug;
import com.pspm.entity.BugStatus;
import com.pspm.entity.Module;
import com.pspm.entity.PmUser;
import com.pspm.entity.PriorityEnum;
import com.pspm.entity.Severity;
import com.pspm.mapper.BugMapper;
import com.pspm.mapper.ProjectMapper;
import com.pspm.mapper.UserMapper;
import com.pspm.service.BugService;
import com.pspm.utils.AppConstants;
import com.pspm.utils.DataResult;
import com.pspm.utils.Pagination;
import com.pspm.utils.SessionUtils;

@Controller
@RequestMapping("/bug")
public class BugMgnController {
	
	@Autowired
	ProjectMapper projectMapper;
	
	@Autowired
	BugMapper bugMapper;
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	BugService bugService;
	
	@RequestMapping("/create")
	public String create(Model model, HttpServletRequest req){
		Bug bug = new Bug();
		bug.setServerityLvl(Severity.Medium.getCode());
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
			bug.setProjectId(SessionUtils.getCurProjectId(req));
			bug.setStatus(BugStatus.OPEN);
			bugMapper.addBug(bug);
		}
		return "forward:/bug/listOpen";
	}
	
	private PmUser getModuleDefaultAssignee(Module module) {
		PmUser moduleOwner = projectMapper.getModuleOwnerByMId(module.getModuleId());
		return moduleOwner;
	}

	@RequestMapping("/list")
	public String list(Bug bug, Model model, HttpServletRequest req){
		String pageNum = req.getParameter("pageNum");
		Pagination pageParam = new Pagination(pageNum);
		
		Integer projectId = getCurrProjectId(req);
		List<Bug> bugList = bugMapper.listOpenDefects(projectId, pageParam.getStartIndex(), Pagination.DEFAULT_PAGE_SIZE);
		model.addAttribute("defectList", bugList);
		Integer totalCnt = bugMapper.cntOpenDefects(projectId);
		Pagination pagination = new Pagination(totalCnt, pageParam.getPageNum());
		model.addAttribute("pagination", pagination);
		
		BugStatus[] allStatus = BugStatus.values();
		model.addAttribute("statusOptions", allStatus);
		PriorityEnum[] priorities = PriorityEnum.values();
		model.addAttribute("priorities", priorities);
		
		List<PmUser> users = userMapper.getAllUsers();
		model.addAttribute("users", users);
		return "bugList";
	}
	
	@RequestMapping("/listUnresolved")
	public String listUnresolved(@RequestParam("moduleId") Integer moduleId, Model model, HttpServletRequest req){
		
		return "bugList";
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public DataResult update(Bug bug){
		DataResult rlt = new DataResult(true);
		try{
			if(bug.getBugId()!=null){
				bugService.updateBug(bug);
				rlt.setMsg("保存成功");
			}else{
				rlt.setSucceed(false);
				rlt.setMsg("更新失败");
			}
		}catch (Exception e) {
			e.printStackTrace();
			rlt.setSucceed(false);
			rlt.setMsg("系统错误");
		}
		
		return rlt;
	}
}
