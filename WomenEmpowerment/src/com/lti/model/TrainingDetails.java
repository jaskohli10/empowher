package com.lti.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "training_details")
@Component
@Scope(scopeName = "prototype")
public class TrainingDetails {

	@Id
	private long trainingId;
	private String trainingName;
	private int trainingDurationInMonths;
	private int traineeCapacity;
	@DateTimeFormat(iso = ISO.DATE)
	@Temporal(TemporalType.DATE)
	private Date trainingStartDate;
	private String state;
	private String city;
	private int zipCode;
	private String address;

	@ManyToOne()
	private NgoDetails ngoDetails;

	public TrainingDetails() {
		super();
	}

	public TrainingDetails(long trainingId, String trainingName, int trainingDurationInMonths, int traineeCapacity,
			Date trainingStartDate, String state, String city, int zipCode, String address) {
		super();
		this.trainingId = trainingId;
		this.trainingName = trainingName;
		this.trainingDurationInMonths = trainingDurationInMonths;
		this.traineeCapacity = traineeCapacity;
		this.trainingStartDate = trainingStartDate;
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

	public int getTrainingDurationInMonths() {
		return trainingDurationInMonths;
	}

	public void setTrainingDurationInMonths(int trainingDurationInMonths) {
		this.trainingDurationInMonths = trainingDurationInMonths;
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

}
