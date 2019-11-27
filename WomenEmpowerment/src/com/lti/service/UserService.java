package com.lti.service;

import java.util.List;

import com.lti.model.NgoDetails;
import com.lti.model.TrainingDetails;
import com.lti.model.TrainingType;
import com.lti.model.User;
import com.lti.model.WomenDetails;

public interface UserService {

	public boolean checkLoginUser(String username, String password);

	public boolean checkLoginAdmin(String username, String password);

	public boolean registerUser(User user);

	public boolean registerNgo(NgoDetails ngoDetails);

	public List<NgoDetails> findAllNgos();

	public NgoDetails findNgoById(Long ngoRegisterationId);

	boolean modifyNgo(Long ngoRegisterationId, String approvalStatus);

	void send(String email);

	public List<NgoDetails> findNgoByCity(String city);

	public List<TrainingDetails> findTrainingByNgoName(String organizationName);

	public boolean registerTrainingByNgo(TrainingDetails trainingDetails);

	public List<TrainingType> findTrainingCategory();

	public long findNgoRegistrationIdByUsername(String username);

	public String findNgoNameByUsername(String username);

	public List<TrainingDetails> findAllListedTraining();

	public boolean registerWomenStep(WomenDetails womenDetails);
	
	public List<WomenDetails> findAllWomen();
	
	boolean modifyWomen(Long womenRegistrationId, String approvalStatus);
}
