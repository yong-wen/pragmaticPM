package com.pspm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pspm.entity.PmUser;
import com.pspm.mapper.UserMapper;

@Controller
public class LoginController {
	
	@Autowired
	UserMapper userMapper;

	@RequestMapping("/login")
	public String login(@RequestParam("userId") String userId,@RequestParam("password") String pwd, Model model, HttpServletRequest req){
		PmUser vUser = userMapper.loginUser(userId, pwd);
		if(vUser==null){
			model.addAttribute("userId", userId);
			model.addAttribute("errorMsg", "用户名或者密码不正确");
			return "login";
		}else{
			req.getSession().setAttribute("currentUser", vUser);
		}
		return "dashboard";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req){
		req.getSession().invalidate();
		return "login";
	}
}
