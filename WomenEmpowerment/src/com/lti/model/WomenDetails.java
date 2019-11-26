package com.lti.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Entity
@Scope(scopeName = "prototype")
@Table(name = "women_reg_details")
@SequenceGenerator(name = "women_reg_id_seq", sequenceName = "women_reg_id_seq")
public class WomenDetails {

	@Id
	@Column(name = "woman_registration_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "women_reg_id_seq")
	private long womenRegistrationId;

	@Column(name = "gender")
	private String gender;
	@Column(name = "marital_status")
	private String maritalStatus;
	private String caste;
	private String category;
	private String state;
	private String city;
	private String address;
	private String zipcode;
	@Column(name = "aadhar_card")
	private String aadhaarcard;
	@Column(name = "pan_card")
	private String pancard;
	@Column(name = "emergency_contact_no")
	private long emergencyContactNo;

	@Column(name = "approval_status")
	private String approvalStatus;

	@ManyToOne
	@JoinColumn(name = "ngo_registration_id")
	private NgoDetails ngoDetails;

	@ManyToOne
	@JoinColumn(name = "training_id")
	private TrainingDetails trainingDetails;

	@OneToOne
	@JoinColumn(name = "username")
	private User user;

	public WomenDetails() {
		super();
	}

	public WomenDetails(long womenRegistrationId, String gender, String maritalStatus, String caste, String category,
			String state, String city, String address, String zipcode, String aadhaarcard, String pancard,
			long emergencyContactNo, String approvalStatus) {
		super();
		this.womenRegistrationId = womenRegistrationId;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.caste = caste;
		this.category = category;
		this.state = state;
		this.city = city;
		this.address = address;
		this.zipcode = zipcode;
		this.aadhaarcard = aadhaarcard;
		this.pancard = pancard;
		this.emergencyContactNo = emergencyContactNo;
		this.approvalStatus = approvalStatus;
	}

	public long getWomenRegistrationId() {
		return womenRegistrationId;
	}

	public void setWomenRegistrationId(long womenRegistrationId) {
		this.womenRegistrationId = womenRegistrationId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getCaste() {
		return caste;
	}

	public void setCaste(String caste) {
		this.caste = caste;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAadhaarcard() {
		return aadhaarcard;
	}

	public void setAadhaarcard(String aadhaarcard) {
		this.aadhaarcard = aadhaarcard;
	}

	public String getPancard() {
		return pancard;
	}

	public void setPancard(String pancard) {
		this.pancard = pancard;
	}

	public long getEmergencyContactNo() {
		return emergencyContactNo;
	}

	public void setEmergencyContactNo(long emergencyContactNo) {
		this.emergencyContactNo = emergencyContactNo;
	}

	public String getApprovalStatus() {
		return approvalStatus;
	}

	public void setApprovalStatus(String approvalStatus) {
		this.approvalStatus = approvalStatus;
	}

	public NgoDetails getNgoDetails() {
		return ngoDetails;
	}

	public void setNgoDetails(NgoDetails ngoDetails) {
		this.ngoDetails = ngoDetails;
	}

	public TrainingDetails getTrainingDetails() {
		return trainingDetails;
	}

	public void setTrainingDetails(TrainingDetails trainingDetails) {
		this.trainingDetails = trainingDetails;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
