package com.lti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.dao.UserDao;
import com.lti.model.NgoDetails;
import com.lti.model.TrainingDetails;
import com.lti.model.TrainingType;
import com.lti.model.User;

@Service("service")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;
	@Autowired
	private NgoDetails ngoDetails;
	@Autowired
	private MailSender mailSender;

	@Autowired
	private SimpleMailMessage message;

	private int result;

	public UserDao getDao() {
		return dao;
	}

	public void setDao(UserDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean checkLoginUser(String username, String password) {
		result = getDao().readLoginUser(username, password);
		return (result == 1) ? true : false;

	}

	@Override
	public boolean checkLoginAdmin(String username, String password) {
		result = getDao().readLoginAdmin(username, password);
		return (result == 1) ? true : false;
	}

	@Override
	@Transactional
	public boolean registerUser(User user) {
		result = getDao().createUser(user);
		return (result == 1) ? true : false;
	}

	@Override
	@Transactional
	public boolean registerNgo(NgoDetails ngoDetails) {
		result = getDao().createNgo(ngoDetails);
		return (result == 1) ? true : false;
	}

	@Override
	public List<NgoDetails> findAllNgos() {
		List<NgoDetails> list = getDao().readAllNgos();
		return list;
	}

	@Override
	@Transactional
	public boolean modifyNgo(Long ngoRegisterationId, String approvalStatus) {
		result = getDao().modifyNgo(ngoRegisterationId, approvalStatus);
		return (result == 1) ? true : false;
	}

	@Override
	public NgoDetails findNgoById(Long ngoRegisterationId) {
		ngoDetails = getDao().readNgoById(ngoRegisterationId);
		return (ngoDetails != null) ? ngoDetails : null;
	}

	@Override
	public void send(String email) {
		message.setTo(email); // set a proper recipient of the mail
		message.setSubject("Test Mail");
		message.setText("Hi!");
		mailSender.send(message);
	}

	@Override
	public List<NgoDetails> findNgoByCity(String city) {
		List<NgoDetails> ngoDetails = getDao().readNgoByCity(city);
		return ngoDetails;
	}

	@Override
	public List<TrainingDetails> findTrainingByNgoName(String organizationName) {
		List<TrainingDetails> trainingDetails = getDao().readTrainingByNgoName(organizationName);
		return trainingDetails;
	}

	@Override
	public boolean registerTrainingByNgo(TrainingDetails trainingDetails) {
		result = getDao().createTrainingByNgo(trainingDetails);
		return (result == 1) ? true : false;
	}

	@Override
	public List<TrainingType> findTrainingCategory() {
		List<TrainingType> trainingTypes = getDao().readTrainingCategory();
		return trainingTypes;
	}

}
