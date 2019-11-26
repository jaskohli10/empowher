package com.lti.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lti.model.NgoDetails;
import com.lti.model.TrainingDetails;
import com.lti.service.UserService;

@RestController
public class WomenRestController {

	@Autowired
	private UserService service;

	// testing purpose
	@RequestMapping(path = "getNgos", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<NgoDetails> ngo() {
		List<NgoDetails> ngoDetails = service.findAllNgos();
		return ngoDetails;
	}

	@RequestMapping(path = "getNgoByCity.do", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<NgoDetails> ngoByCity(@RequestParam("city") String city) {
		List<NgoDetails> ngoDetails = service.findNgoByCity(city);
		return ngoDetails;
	}

	@RequestMapping(path = "getTrainingByNgoName.do", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<TrainingDetails> trainingByNgoName(@RequestParam("organizationName") String organizationName) {
		List<TrainingDetails> trainingDetails = service.findTrainingByNgoName(organizationName);
		return trainingDetails;
	}

}
