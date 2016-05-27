package com.pspm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bug")
public class BugMgnController {

	@RequestMapping("/create")
	public String create(Model model){
		
		return "bugDetail";
	}
}
