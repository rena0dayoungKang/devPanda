package com.kosta.devpanda.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.devpanda.dto.Person;
import com.kosta.devpanda.service.AuthService;

@Controller
public class MemberController {
	
	
	
	@Autowired
	private HttpSession session;

	@Autowired
	private AuthService authService;
	
	@RequestMapping("/")
	public String personLogin() {
		return "signIn";
	}

	@RequestMapping(value="/person/login",method=RequestMethod.POST)
	public String personLogIn(@ModelAttribute Person person,Model model) {
			
		try {
			Person loginPerson = authService.personLogin(person);
			if(loginPerson !=null ) {
				session.setAttribute("person", person);
				session.setAttribute("id", person.getId());
				session.setAttribute("userType", "person");
				session.setMaxInactiveInterval(1800);
			}
			return "header";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("err",e.getMessage());
			return "err";
		}
	}
	
	
}
