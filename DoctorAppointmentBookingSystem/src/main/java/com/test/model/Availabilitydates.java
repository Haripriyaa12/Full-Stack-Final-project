package com.test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctoravailability")
public class Availabilitydates {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int availabilityid;
	
	private String doctor;
	private String fromdate;
	private String enddate;
	
	public Availabilitydates()
	{
		
	}

	public Availabilitydates(String doctor, String fromdate, String enddate) {
		super();
		this.doctor = doctor;
		this.fromdate = fromdate;
		this.enddate = enddate;
	}

	public int getAvailabilityid() {
		return availabilityid;
	}

	public void setAvailabilityid(int availabilityid) {
		this.availabilityid = availabilityid;
	}

	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getFromdate() {
		return fromdate;
	}

	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	
	

}
