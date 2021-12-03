package com.test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="feedback")
public class Feedback {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feedbackid;
	
	private int rating;
	private String patient;
	private String doctor;
	private String feedbackcomment;
	
	public Feedback()
	{
		
	}
	
	public Feedback(int rating, String patient, String doctor, String feedbackcomment) {
		super();
		this.rating = rating;
		this.patient = patient;
		this.doctor = doctor;
		this.feedbackcomment = feedbackcomment;
	}

	public int getFeedbackid() {
		return feedbackid;
	}

	public void setFeedbackid(int feedbackid) {
		this.feedbackid = feedbackid;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getPatient() {
		return patient;
	}

	public void setPatient(String patient) {
		this.patient = patient;
	}

	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getFeedbackcomment() {
		return feedbackcomment;
	}

	public void setFeedbackcomment(String feedbackcomment) {
		this.feedbackcomment = feedbackcomment;
	}
	
	
	
	
	
}
