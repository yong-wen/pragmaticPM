package com.pspm.utils;

import javax.servlet.http.HttpServletRequest;

import com.pspm.entity.PmUser;

public class SessionUtils {
	public static Integer getCurProjectId(HttpServletRequest req) {
		return (Integer) req.getSession().getAttribute(AppConstants.CURR_PROJ_ID);
	}
	
	public static String getCurrentUserId(HttpServletRequest req) {
		PmUser u = (PmUser) req.getSession().getAttribute(AppConstants.CURR_USER);
		return u.getUserId();
	}
}
