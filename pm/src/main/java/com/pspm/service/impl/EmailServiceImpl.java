package com.pspm.service.impl;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pspm.entity.Bug;
import com.pspm.mapper.UserMapper;
import com.pspm.service.MailService;

@Service
public class EmailServiceImpl implements MailService{
	
	@Autowired
	UserMapper userMapper;
	
	private String user = "office@walkclass.com";
	// 授权码 ezjneejvglxrcije
	private String password = "ezjneejvglxrcije";
	private final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

	public void sendEmail(String receiptEmail, String title, String htmlContent) {
		String fromMail = "office@walkclass.com";
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.qq.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.socketFactory.port", "465");
		
		try{
			Session session = Session.getInstance(props);
			//session.setDebug(true);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(fromMail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(receiptEmail));
			message.setSubject(title);
			message.setContent(htmlContent, "text/html;charset=utf8");
			message.setSentDate(new Date());
			message.saveChanges();
			Transport transport = session.getTransport("smtp");
			transport.connect(user, password);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close(); 
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		String receiptEmail = "wenyong@walkclass.com";
		String title = "开发测试邮件";
		StringBuilder sb = new StringBuilder();
		sb.append("<!DOCTYPE html>");
		sb.append("<html><head>");
		sb.append("<meta charset='utf-8'>");
		sb.append("<title>学呗软件Bug管理</title>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<h1>Bug#2 转给你了</h1>");
		sb.append("</body>");
		sb.append("</html>");
		EmailServiceImpl mailServ = new EmailServiceImpl();
		mailServ.sendEmail(receiptEmail, title, sb.toString());
	}

	public void sendAssignmentEmail(Bug bug) {
		String assignedToEmail = userMapper.getUserEmailById(bug.getAssignTo().getUserId());
		if(assignedToEmail!=null){
			String title = "["+bug.getStatus().getName()+"] 云课堂Bug#"+bug.getBugId() + "分配给你了";
			String content = buildBugDetailHtml(bug);
			this.sendEmail(assignedToEmail, title, content);
		}
	}

	private String buildBugDetailHtml(Bug bug) {
		StringBuilder sb = new StringBuilder();
		sb.append("<!DOCTYPE html>");
		sb.append("<html><head>");
		sb.append("<meta charset='utf-8'>");
		sb.append("<title>学呗软件Bug管理</title>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<h3>【");
		sb.append(bug.getStatus().getName());
		sb.append("】");
		sb.append(bug.getTitle());
		sb.append("</h3>");
		sb.append("<h4>详细内容：");
		sb.append("</h4>");
		sb.append("<div>");
		sb.append(bug.getSteps());
		sb.append("</div>");
		sb.append("<h4>备注：");
		sb.append("</h4>");
		sb.append("<div>");
		sb.append(bug.getComments());
		sb.append("</div>");
		sb.append("</body>");
		sb.append("</html>");
		return sb.toString();
	}

}
