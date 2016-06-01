package com.pspm.service;

import com.pspm.entity.Bug;

public interface MailService {
	
	public void sendEmail(String receiptEmail, String title, String content);

	public void sendAssignmentEmail(Bug bug);
}
