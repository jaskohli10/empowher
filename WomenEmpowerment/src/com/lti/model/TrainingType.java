package com.lti.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "training_type")
@Component
@Scope(scopeName = "prototype")
public class TrainingType {

	@Id
	private long trainingTypeId;
	private String trainingType;

	@OneToMany(cascade = CascadeType.ALL)
	private List<TrainingDetails> trainingDetails;

	public TrainingType() {
		super();
	}

	public TrainingType(long trainingTypeId, String trainingType) {
		super();
		this.trainingTypeId = trainingTypeId;
		this.trainingType = trainingType;
	}

	public long getTrainingTypeId() {
		return trainingTypeId;
	}

	public void setTrainingTypeId(long trainingTypeId) {
		this.trainingTypeId = trainingTypeId;
	}

	public String getTrainingType() {
		return trainingType;
	}

	public void setTrainingType(String trainingType) {
		this.trainingType = trainingType;
	}

	public List<TrainingDetails> getTrainingDetails() {
		return trainingDetails;
	}

	public void setTrainingDetails(List<TrainingDetails> trainingDetails) {
		this.trainingDetails = trainingDetails;
	}

}
