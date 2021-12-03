package com.test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="appointment")
public class Appointment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int appointmentid;
	
	private String patient;
	private String doctor;
	private String appointmentdate;
	private String appointmentstatus;
	private String remarks;
	public Appointment()
	{
		
	}
	public Appointment(String patient, String doctor, String appointmentdate, String appointmentstatus,
			String remarks) {
		super();
		this.patient = patient;
		this.doctor = doctor;
		this.appointmentdate = appointmentdate;
		this.appointmentstatus = appointmentstatus;
		this.remarks = remarks;
	}
	public int getAppointmentid() {
		return appointmentid;
	}
	public void setAppointmentid(int appointmentid) {
		this.appointmentid = appointmentid;
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
	public String getAppointmentdate() {
		return appointmentdate;
	}
	public void setAppointmentdate(String appointmentdate) {
		this.appointmentdate = appointmentdate;
	}
	public String getAppointmentstatus() {
		return appointmentstatus;
	}
	public void setAppointmentstatus(String appointmentstatus) {
		this.appointmentstatus = appointmentstatus;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	
	

}
