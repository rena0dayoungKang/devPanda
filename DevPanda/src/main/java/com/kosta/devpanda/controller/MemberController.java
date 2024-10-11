package com.kosta.devpanda.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	
	@Autowired
	private HttpSession session;

	@RequestMapping("/")
	public String personLogin() {
		return "signIn";
	}

	
	
	
}
