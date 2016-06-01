package com.pspm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.pspm.entity.Bug;
import com.pspm.mapper.BugMapper;
import com.pspm.service.BugService;
import com.pspm.service.MailService;

@Service
public class BugServiceImpl implements BugService{
	
	@Autowired
	BugMapper bugMapper;
	
	@Autowired
	MailService mailServ;
	
	private String emailEnable = "false";

	public void updateBug(Bug bug) {
		Bug original = bugMapper.getBugById(bug.getBugId());
		processAssignedToChange(original, bug);
		bugMapper.updateBugInfo(bug);
	}

	private void processAssignedToChange(Bug original, Bug bug) {
		if(emailEnable!=null && "true".equals(emailEnable)){
			//assigned has changed
			if(original.getAssignTo()!=null 
					&& bug.getAssignTo()!=null 
					&& original.getAssignTo().getUserId()!=bug.getAssignTo().getUserId()){
				mailServ.sendAssignmentEmail(bug);
			}
		}
	}

}
