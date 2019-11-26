package com.lti.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lti.model.User;
import com.lti.service.UserService;

@Controller
public class UserController {

	private boolean result = false;
	@Autowired
	private HttpSession session;
	@Autowired
	private UserService service;

	@RequestMapping(path = "viewUserRegistrationPage")
	public String addUserPage() {
		return "userregistration";
	}

	@RequestMapping(path = "viewUserLoginPage")
	public String userLoginPage() {
		return "userlogin";
	}

	@RequestMapping(path = "userLogin.do", method = RequestMethod.POST)
	public String verifyUser(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpServletRequest request) {
		result = service.checkLoginUser(username, password);

		if (result) {
			session = request.getSession(true);
			session.setAttribute("username", username);
			return "userhome";
		} else
			return "userlogin";
	}

	@RequestMapping(path = "add.do", method = RequestMethod.POST)
	public String addUser(User user) {
		result = service.registerUser(user);
		if (result) {
			return "userlogin";
		} else {
			return "userlogin";
		}

	}

}
