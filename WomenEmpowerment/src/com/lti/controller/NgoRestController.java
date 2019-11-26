package com.lti.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.lti.model.TrainingType;
import com.lti.service.UserService;

@RestController
public class NgoRestController {

	@Autowired
	private UserService service;

	@RequestMapping(path = "getTrainingsCategory", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<TrainingType> getTrainingsCategory() {
		List<TrainingType> trainingTypes = service.findTrainingCategory();
		return trainingTypes;
	}
}
