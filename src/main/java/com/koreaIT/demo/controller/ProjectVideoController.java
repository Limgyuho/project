package com.koreaIT.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectVideoController {
	
	@RequestMapping("/usr/video/conference")
	public String conference() {
		
		return "usr/video/conference";
	}
	
	
	
	
	
}
