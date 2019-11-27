package com.lti.dao;

import java.util.List;

import com.lti.model.NgoDetails;
import com.lti.model.TrainingDetails;
import com.lti.model.TrainingType;
import com.lti.model.User;
import com.lti.model.WomenDetails;

public interface UserDao {

	public int readLoginAdmin(String username, String password);

	public int readLoginUser(String username, String password);

	public int createUser(User user);

	public int createNgo(NgoDetails ngoDetails);

	public List<NgoDetails> readAllNgos();

	public int modifyNgo(Long ngoRegisterationId, String approvalStatus);

	public NgoDetails readNgoById(Long ngoRegisterationId);

	public List<NgoDetails> readNgoByCity(String city);

	public List<TrainingDetails> readTrainingByNgoName(String organizationName);

	public int createTrainingByNgo(TrainingDetails trainingDetails);

	public List<TrainingType> readTrainingCategory();

	public NgoDetails readNgoRegistrationIdByUsername(String username);

	public NgoDetails readNgoNameByUsername(String username);

	public List<TrainingDetails> readAllTraining();

	public int createWomenStep(WomenDetails womenDetails);
	
	public List<WomenDetails> readAllWomen();
	
	public int modifyWomen(Long womenRegistrationId, String approvalStatus);

}
