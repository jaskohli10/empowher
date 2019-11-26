package com.lti.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "training_details")
@Component
@Scope(scopeName = "prototype")
@SequenceGenerator(name = "training_seq", sequenceName = "training_seq", initialValue = 1)
@JsonIgnoreProperties(value = { "ngoDetails" })
public class TrainingDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "training_seq")
	@Column(name = "training_id")
	private long trainingId;

	@Column(name = "training_name")
	private String trainingName;

	@Column(name = "training_description")
	private String trainingDescription;

	@Column(name = "trainee_capacity")
	private int traineeCapacity;

	@DateTimeFormat(iso = ISO.DATE)
	@Temporal(TemporalType.DATE)
	@Column(name = "training_start_date")
	private Date trainingStartDate;

	@DateTimeFormat(iso = ISO.DATE)
	@Temporal(TemporalType.DATE)
	@Column(name = "training_end_date")
	private Date trainingEndDate;

	private String state;
	private String city;

	@Column(name = "zipcode")
	private int zipCode;
	private String address;

	@ManyToOne()
	@JoinColumn(name = "ngo_registration_id")
	private NgoDetails ngoDetails;

	@ManyToOne
	@JoinColumn(name = "training_type_id")
	private TrainingType trainingType;

	@OneToMany(mappedBy = "trainingDetails")
	private List<WomenDetails> womenDetails;

	public TrainingDetails() {
		super();
	}

	public TrainingDetails(long trainingId, String trainingName, int traineeCapacity, Date trainingStartDate,
			Date trainingEndDate, String state, String city, int zipCode, String address) {
		super();
		this.trainingId = trainingId;
		this.trainingName = trainingName;
		this.traineeCapacity = traineeCapacity;
		this.trainingStartDate = trainingStartDate;
		this.trainingEndDate = trainingEndDate;
		this.state = state;
		this.city = city;
		this.zipCode = zipCode;
		this.address = address;
	}

	public long getTrainingId() {
		return trainingId;
	}

	public void setTrainingId(long trainingId) {
		this.trainingId = trainingId;
	}

	public String getTrainingName() {
		return trainingName;
	}

	public void setTrainingName(String trainingName) {
		this.trainingName = trainingName;
	}

	public int getTraineeCapacity() {
		return traineeCapacity;
	}

	public void setTraineeCapacity(int traineeCapacity) {
		this.traineeCapacity = traineeCapacity;
	}

	public Date getTrainingStartDate() {
		return trainingStartDate;
	}

	public void setTrainingStartDate(Date trainingStartDate) {
		this.trainingStartDate = trainingStartDate;
	}

	public Date getTrainingEndDate() {
		return trainingEndDate;
	}

	public void setTrainingEndDate(Date trainingEndDate) {
		this.trainingEndDate = trainingEndDate;
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

	public NgoDetails getNgoDetails() {
		return ngoDetails;
	}

	public void setNgoDetails(NgoDetails ngoDetails) {
		this.ngoDetails = ngoDetails;
	}

	public TrainingType getTrainingType() {
		return trainingType;
	}

	public void setTrainingType(TrainingType trainingType) {
		this.trainingType = trainingType;
	}

	public String getTrainingDescription() {
		return trainingDescription;
	}

	public void setTrainingDescription(String trainingDescription) {
		this.trainingDescription = trainingDescription;
	}

}
