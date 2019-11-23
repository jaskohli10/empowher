package com.lti.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.lti.model.Admin;
import com.lti.model.NgoDetails;
import com.lti.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@PersistenceContext
	private EntityManager entityManager;
	private String jpql;
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
		int result=query.executeUpdate();
		return result;
	}

	@Override
	public NgoDetails readNgoById(Long ngoRegisterationId) {
		ngoDetails = entityManager.find(NgoDetails.class, ngoRegisterationId);
		return (ngoDetails != null) ? ngoDetails : null;
	}

}
