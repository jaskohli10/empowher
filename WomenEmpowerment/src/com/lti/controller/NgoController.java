package com.lti.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lti.model.NgoDetails;
import com.lti.model.User;
import com.lti.service.UserService;

@Controller
public class NgoController {

	@Autowired
	private User user;
	@Autowired
	private UserService service;

	@RequestMapping(path = "ngoRegistrationPage")
	public String ngoRegistrationPage() {
		return "ngoregistration";
	}

	@RequestMapping(path = "ngoadd.do", method = RequestMethod.POST)
	public String addNgo(NgoDetails ngoDetails, @RequestParam("username") String username,
			@RequestParam("name") String[] names, @RequestParam("file") MultipartFile[] files) {
		user.setUserName(username);
		if (files.length != names.length)
			return "Mandatory information missing";
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			String name = names[i];
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = "D:/EmpowherMaster/WomenEmpowerment/WebContent/WEB-INF";
				File dir = new File(rootPath + File.separator + "FILESUPLOADED");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name + ".pdf");
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				ngoDetails.setMemorandumOfAssociation(names[0]);
				ngoDetails.setSocietiesRegistrationAffidavit(names[1]);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		ngoDetails.setApprovalStatus("pending");
		ngoDetails.setUser(user);
		service.registerNgo(ngoDetails);
		return "homepage";
	}

}
