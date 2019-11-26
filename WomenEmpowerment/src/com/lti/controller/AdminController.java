package com.lti.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lti.model.NgoDetails;
import com.lti.service.UserService;

@Controller
public class AdminController {

	private boolean result = false;
	@Autowired
	private HttpSession session;
	@Autowired
	private UserService service;

	@RequestMapping(path = "viewAdminLoginPage")
	public String adminLoginPage() {
		return "adminlogin";
	}

	@RequestMapping(path = "viewAdminHomePage")
	public String viewAdminHomePage() {
		return "adminhomepage";
	}

	@RequestMapping(path = "adminlogin.do", method = RequestMethod.POST)
	public String verifyAdmin(HttpServletRequest request, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		result = service.checkLoginAdmin(username, password);
		if (result) {
			session = request.getSession(true);
			session.setAttribute("adminUser", username);
			return "adminhomepage";
		} else
			return "adminlogin";
	}

	@RequestMapping(path = "viewNgos.do")
	public String viewAllNgos(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.getAttribute("adminUser");

			List<NgoDetails> list = service.findAllNgos();
			model.addAttribute("ngoList", list);
			return "viewallngos";
		} else
			return "homepage";
	}

	@RequestMapping(path = "updateNgo.do", method = RequestMethod.POST)
	public String updateNgo(@RequestParam("registrationId") long ngoRegisterationId,
			@RequestParam("approvalStatus") String approvalStatus) {
		result = service.modifyNgo(ngoRegisterationId, approvalStatus);
		if (result)

			return "redirect:viewNgos.do";
		else
			return "error";
	}

}
