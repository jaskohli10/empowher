package com.lti.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lti.model.NgoDetails;
import com.lti.model.TrainingDetails;
import com.lti.model.User;
import com.lti.model.WomenDetails;
import com.lti.service.UserService;

@Controller
public class WomenController {

	private boolean result = false;
	@Autowired
	private HttpSession session;
	@Autowired
	private UserService service;
	@Autowired
	private NgoDetails ngoDetails;
	@Autowired
	private TrainingDetails trainingDetails;
	@Autowired
	private User user;

	@RequestMapping(path = "womenStepRegistrationPage")
	public String womenStepRegistrationPage() {
		return "womenstepregistration";
	}

	@RequestMapping(path = "viewListedTraining.do")
	public String viewListedTraining(Model model, HttpServletRequest request) {
		session = request.getSession(false);
		if (session != null) {
			session.getAttribute("username");

			List<TrainingDetails> tlist = service.findAllListedTraining();
			for (TrainingDetails trainingDetails : tlist) {
				System.out.println(trainingDetails);
			}
			model.addAttribute("training", tlist);
			return "alllistedtrainings";
		} else
			return "userhome";
	}

	@RequestMapping(path = "womenStepRegistration.do", method = RequestMethod.POST)
	public String womenStepRegistration(WomenDetails womenDetails, @RequestParam("userName") String userName,
			@RequestParam("ngoid") long ngoRegisterationId, @RequestParam("trainingId") long trainingId,
			@RequestParam("name") String[] names, @RequestParam("file") MultipartFile[] files) {
		user.setUserName(userName);
		trainingDetails.setTrainingId(trainingId);
		ngoDetails.setNgoRegisterationId(ngoRegisterationId);
		if (files.length != names.length)
			return "Mandatory information missing";
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			String name = names[i];
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "FILESUPLOADED");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name + ".pdf");
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				womenDetails.setAadhaarcard(names[0]);
				womenDetails.setPancard(names[1]);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		womenDetails.setUser(user);
		womenDetails.setTrainingDetails(trainingDetails);
		womenDetails.setNgoDetails(ngoDetails);
		womenDetails.setApprovalStatus("pending");
		result = service.registerWomenStep(womenDetails);
		return (result) ? "userhome" : "errorpage";
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
