package com.lti.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Component
@Entity
@Scope(scopeName = "prototype")
@Table(name = "ngo_reg_details")
@SequenceGenerator(name = "ngo_reg_id_seq", sequenceName = "ngo_reg_id_seq", initialValue = 10000)
@JsonIgnoreProperties(value = { "hostelDetails", "trainingDetails", "user" })
public class NgoDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ngo_reg_id_seq")
	@Column(name = "ngo_registration_id")
	private long ngoRegisterationId;

	@Column(name = "organization_name")
	private String organizationName;

	@Column(name = "owner_name")
	private String ownerName;

	private String state;
	private String city;
	private int zipCode;
	private String address;
	private String webSite;

	@Column(name = "staff_strength")
	private int staffStrength;

	@Column(name = "memorandum_of_association")
	private String memorandumOfAssociation;

	@Column(name = "registration_affidavit")
	private String societiesRegistrationAffidavit;

	@Column(name = "approval_status")
	private String approvalStatus;

	@OneToMany(mappedBy = "ngo")
	private List<HostelDetails> hostelDetails;

	@OneToOne
	@JoinColumn(name = "username")
	private User user;

	@OneToMany(mappedBy = "ngoDetails")
	private List<TrainingDetails> trainingDetails;

	@OneToMany(mappedBy = "ngoDetails")
	private List<WomenDetails> womenDetails;

	public NgoDetails() {
		super();
	}

	public NgoDetails(long ngoRegisterationId, String organizationName, String ownerName, String state, String city,
			int zipCode, String address, String webSite, int staffStrength, String memorandumOfAssociation,
			String societiesRegistrationAffidavit, String approvalStatus) {
		super();
		this.ngoRegisterationId = ngoRegisterationId;
		this.organizationName = organizationName;
		this.ownerName = ownerName;
		this.state = state;
		this.city = city;
		this.zipCode = zipCode;
		this.address = address;
		this.webSite = webSite;
		this.staffStrength = staffStrength;
		this.memorandumOfAssociation = memorandumOfAssociation;
		this.societiesRegistrationAffidavit = societiesRegistrationAffidavit;
		this.approvalStatus = approvalStatus;
	}

	public long getNgoRegisterationId() {
		return ngoRegisterationId;
	}

	public void setNgoRegisterationId(long ngoRegisterationId) {
		this.ngoRegisterationId = ngoRegisterationId;
	}

	public String getOrganizationName() {
		return organizationName;
	}

	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
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

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getWebSite() {
		return webSite;
	}

	public void setWebSite(String webSite) {
		this.webSite = webSite;
	}

	public int getStaffStrength() {
		return staffStrength;
	}

	public void setStaffStrength(int staffStrength) {
		this.staffStrength = staffStrength;
	}

	public String getMemorandumOfAssociation() {
		return memorandumOfAssociation;
	}

	public void setMemorandumOfAssociation(String memorandumOfAssociation) {
		this.memorandumOfAssociation = memorandumOfAssociation;
	}

	public String getSocietiesRegistrationAffidavit() {
		return societiesRegistrationAffidavit;
	}

	public void setSocietiesRegistrationAffidavit(String societiesRegistrationAffidavit) {
		this.societiesRegistrationAffidavit = societiesRegistrationAffidavit;
	}

	public String getApprovalStatus() {
		return approvalStatus;
	}

	public void setApprovalStatus(String approvalStatus) {
		this.approvalStatus = approvalStatus;
	}

	public List<HostelDetails> getHostelDetails() {
		return hostelDetails;
	}

	public void setHostelDetails(List<HostelDetails> hostelDetails) {
		this.hostelDetails = hostelDetails;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<TrainingDetails> getTrainingDetails() {
		return trainingDetails;
	}

	public void setTrainingDetails(List<TrainingDetails> trainingDetails) {
		this.trainingDetails = trainingDetails;
	}

	@Override
	public String toString() {
		return "NgoDetails [ngoRegisterationId=" + ngoRegisterationId + ", organizationName=" + organizationName
				+ ", ownerName=" + ownerName + ", state=" + state + ", city=" + city + ", zipCode=" + zipCode
				+ ", address=" + address + ", webSite=" + webSite + ", staffStrength=" + staffStrength
				+ ", memorandumOfAssociation=" + memorandumOfAssociation + ", societiesRegistrationAffidavit="
				+ societiesRegistrationAffidavit + ", approvalStatus=" + approvalStatus + "]";
	}

}
