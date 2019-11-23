package com.lti.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Entity
@Scope(scopeName = "prototype")
@Table(name = "hostel_details")
public class HostelDetails {

	@Id
	private String hostelId;
	private String state;
	private String city;
	private String zipCode;
	private String address;
	private int hostelCapacity;

	@ManyToOne
	@JoinColumn(name = "ngoRegisterationId")
	private NgoDetails ngo;

	public HostelDetails() {
		super();
	}

	public HostelDetails(String hostelId, String state, String city, String zipCode, String address) {
		super();
		this.hostelId = hostelId;
		this.state = state;
		this.city = city;
		this.zipCode = zipCode;
		this.address = address;
	}

	public String getHostelId() {
		return hostelId;
	}

	public void setHostelId(String hostelId) {
		this.hostelId = hostelId;
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

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getHostelCapacity() {
		return hostelCapacity;
	}

	public void setHostelCapacity(int hostelCapacity) {
		this.hostelCapacity = hostelCapacity;
	}

	public NgoDetails getNgo() {
		return ngo;
	}

	public void setNgo(NgoDetails ngo) {
		this.ngo = ngo;
	}

}
