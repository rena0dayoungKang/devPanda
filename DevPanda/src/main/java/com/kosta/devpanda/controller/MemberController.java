package com.kosta.devpanda.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosta.devpanda.dto.Company;
import com.kosta.devpanda.dto.Person;
import com.kosta.devpanda.service.CompanyService;
import com.kosta.devpanda.service.PersonService;

@Controller
public class MemberController {
		
	@Autowired
	private PersonService personService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private HttpSession session;
	
	//첫페이지 - 로그인화면
	@RequestMapping("/")
	public String personLogin() {
		return "signIn";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	
	//로그인 - GET
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "signIn";
	}
	
	//로그인 - POST
	@RequestMapping(value="/personLogin", method=RequestMethod.POST)
	public String personLogin(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {
		try {
			System.out.println(id);
			Person person = personService.loginPerson(id, password);
			person.setPassword("");
			session.setAttribute("person", person);
			//System.out.println(session.getAttribute(id));
			return "redirect:/test";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("err", e.getMessage());
			return "error";
		}
	}
	
	//로그인 - POST
	@RequestMapping(value="/companyLogin", method=RequestMethod.POST)
	public String companyLogin(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {
		try {
			Company company = companyService.loginCompany(id, password);
			company.setPassword("");
			session.setAttribute("company", company);
			//System.out.println(session.getAttribute(id));
			return "redirect:/test";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("err", e.getMessage());
			return "error";
		}
	}
	
	
	//회원가입 - GET
	@RequestMapping(value="/signUpPerson", method=RequestMethod.GET)
	public String signUpPerson() {
		return "signUpPerson";
	}
	

	
	
	
}
