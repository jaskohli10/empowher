package com.lti.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.model.Admin;
import com.lti.model.NgoDetails;
import com.lti.model.TrainingDetails;
import com.lti.model.TrainingType;
import com.lti.model.User;
import com.lti.model.WomenDetails;

@Repository
public class UserDaoImpl implements UserDao {

	@PersistenceContext
	private EntityManager entityManager;
	private String jpql;
	@Autowired
	private NgoDetails ngoDetails;

	public UserDaoImpl() {
		super();
	}

	public int readLoginAdmin(String username, String password) {
		jpql = "SELECT a from Admin a where a.userName =:user AND a.password =:pass";
		TypedQuery<Admin> tquery = entityManager.createQuery(jpql, Admin.class);
		tquery.setParameter("user", username);
		tquery.setParameter("pass", password);
		List<Admin> list = tquery.getResultList();
		return list.size();
	}

	public int readLoginUser(String username, String password) {
		jpql = "SELECT u from User u where u.userName=:user AND u.password=:pass";
		TypedQuery<User> tquery = entityManager.createQuery(jpql, User.class);
		tquery.setParameter("user", username);
		tquery.setParameter("pass", password);
		List<User> list = tquery.getResultList();
		return list.size();
	}

	@Override
	public int createUser(User user) {
		entityManager.persist(user);
		user = entityManager.find(User.class, user.getUserName());
		return (user != null) ? 1 : 0;

	}

	@Override
	public int createNgo(NgoDetails ngoDetails) {
		entityManager.persist(ngoDetails);
		ngoDetails = entityManager.find(NgoDetails.class, ngoDetails.getNgoRegisterationId());
		return (ngoDetails != null) ? 1 : 0;
	}

	@Override
	public List<NgoDetails> readAllNgos() {
		String jpql = "From NgoDetails";
		TypedQuery<NgoDetails> tquery = entityManager.createQuery(jpql, NgoDetails.class);
		List<NgoDetails> list = tquery.getResultList();
		return list;
	}

	@Override
	public int modifyNgo(Long ngoRegisterationId, String approvalStatus) {
		String jpql = "UPDATE NgoDetails ngo SET ngo.approvalStatus =:approvalStatus WHERE ngo.ngoRegisterationId =:ngoRegisterationId";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("approvalStatus", approvalStatus);
		query.setParameter("ngoRegisterationId", ngoRegisterationId);
		int result = query.executeUpdate();
		return result;
	}

	@Override
	public NgoDetails readNgoById(Long ngoRegisterationId) {
		ngoDetails = entityManager.find(NgoDetails.class, ngoRegisterationId);
		return (ngoDetails != null) ? ngoDetails : null;
	}

	@Override
	public List<NgoDetails> readNgoByCity(String city) {
		jpql = "SELECT ngo FROM NgoDetails ngo WHERE ngo.city =:city";
		TypedQuery<NgoDetails> typedQuery = entityManager.createQuery(jpql, NgoDetails.class);
		typedQuery.setParameter("city", city);
		List<NgoDetails> ngoDetails = typedQuery.getResultList();
		return (ngoDetails != null) ? ngoDetails : null;

	}

	@Override
	public List<TrainingDetails> readTrainingByNgoName(String organizationName) {
		// INNER JOIN OWNER ENTITY IS TrainingDetails and INVERSE ENTITY IS
		// NgoDetails
		jpql = "SELECT t FROM TrainingDetails t INNER JOIN t.ngoDetails n WHERE n.organizationName =:organizationName";
		TypedQuery<TrainingDetails> typedQuery = entityManager.createQuery(jpql, TrainingDetails.class);
		typedQuery.setParameter("organizationName", organizationName);
		List<TrainingDetails> trainingDetails = typedQuery.getResultList();
		return (trainingDetails != null) ? trainingDetails : null;
	}

	@Override
	public int createTrainingByNgo(TrainingDetails trainingDetails) {
		entityManager.persist(trainingDetails);
		trainingDetails = entityManager.find(TrainingDetails.class, trainingDetails.getTrainingId());
		return (trainingDetails != null) ? 1 : 0;
	}

	@Override
	public List<TrainingType> readTrainingCategory() {
		jpql = "FROM TrainingType";
		TypedQuery<TrainingType> typedQuery = entityManager.createQuery(jpql, TrainingType.class);
		List<TrainingType> trainingTypes = typedQuery.getResultList();
		return (trainingTypes != null) ? trainingTypes : null;
	}

	@Override
	public NgoDetails readNgoRegistrationIdByUsername(String username) {
		jpql = "SELECT ngo From NgoDetails ngo INNER JOIN ngo.user u WHERE u.userName =:username";
		TypedQuery<NgoDetails> typedQuery = entityManager.createQuery(jpql, NgoDetails.class);
		typedQuery.setParameter("username", username);
		ngoDetails = typedQuery.getSingleResult();

		return ngoDetails;
	}

	@Override
	public NgoDetails readNgoNameByUsername(String username) {
		jpql = "SELECT ngo From NgoDetails ngo INNER JOIN ngo.user u WHERE u.userName =:username";
		TypedQuery<NgoDetails> typedQuery = entityManager.createQuery(jpql, NgoDetails.class);
		typedQuery.setParameter("username", username);
		ngoDetails = typedQuery.getSingleResult();
		return ngoDetails;
	}

	@Override
	public List<TrainingDetails> readAllTraining() {
		String jpql = "From TrainingDetails";
		TypedQuery<TrainingDetails> tquery = entityManager.createQuery(jpql, TrainingDetails.class);
		List<TrainingDetails> tlist = tquery.getResultList();
		return tlist;
	}

	@Override
	public int createWomenStep(WomenDetails womenDetails) {
		entityManager.persist(womenDetails);
		womenDetails = entityManager.find(WomenDetails.class, womenDetails.getWomenRegistrationId());
		return (womenDetails != null) ? 1 : 0;
	}

}
