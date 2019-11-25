package com.lti.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@Autowired
	private HttpSession session;

	@RequestMapping(path = "/")
	public String home() {
		return "homepage";
	}

	@RequestMapping(path = "homePage")
	public String homePage() {
		return "homepage";
	}

	@RequestMapping(path = "aboutusPage")
	public String aboutusPage() {
		return "aboutus";
	}

	@RequestMapping(path = "contactusPage")
	public String contactusPage() {
		return "contactus";
	}

	@RequestMapping(path = "faqsPage")
	public String faqsPage() {
		return "faqs";
	}

	@RequestMapping(path = "stepHomePage")
	public String stepHomePage() {
		return "stephomepage";
	}

	@RequestMapping(path = "ngoHomePage")
	public String ngoHomePage() {
		return "ngohomepage";
	}

	@RequestMapping(path = "stepGuidelinePage")
	public String stepGuidelinePage() {
		return "stepguideline";
	}

	@RequestMapping(path = "logout.do")
	public String logout(HttpServletRequest request) {
		session = request.getSession(false);
		if (session != null)
			session.invalidate();
		return "homepage";
	}
}
