package com.lti.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WomenController {

	@RequestMapping(path = "womenStepRegistrationPage")
	public String womenStepRegistrationPage() {
		return "womenstepregistration";
	}

	@RequestMapping(path = "viewListedTraining.do")
	public String viewListedTraining() {
		return "alllistedtrainings";
	}

	@RequestMapping(path = "womenHostelRegistrationPage")
	public String womenHostelRegistrationPage() {
		return "womenhostelregistration";
	}

	@RequestMapping(path = "viewListedHostels.do")
	public String viewListedHostels() {
		return "alllistedhostels";
	}

}
