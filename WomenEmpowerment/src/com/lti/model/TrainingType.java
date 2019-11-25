package com.lti.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "training_type")
@Component
@Scope(scopeName = "prototype")
@JsonIgnoreProperties(value = { "trainingDetails" })
public class TrainingType {

	@Id
	@Column(name = "training_type_id")
	private String trainingTypeId;

	@Column(name = "training_type")
	private String trainingType;

	@OneToMany(cascade = CascadeType.ALL)
	private List<TrainingDetails> trainingDetails;

	public TrainingType() {
		super();
	}

	public TrainingType(String trainingTypeId, String trainingType, List<TrainingDetails> trainingDetails) {
		super();
		this.trainingTypeId = trainingTypeId;
		this.trainingType = trainingType;
		this.trainingDetails = trainingDetails;
	}

	public String getTrainingTypeId() {
		return trainingTypeId;
	}

	public void setTrainingTypeId(String trainingTypeId) {
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
