package com.test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctor")
public class Doctor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int doctorid;
	
	
	private String doctorname;
	private String speciality;
	private String location;
	private String hospitalname;
	private long mobileno;
	private String email;
	private String password;
	private double chargedpervisit;
	
	public Doctor() {
		
	}
	
	public Doctor(String doctorname, String speciality, String location, String hospitalname, long mobileno,
			String email, String password, double chargedpervisit) {
		super();
		this.doctorname = doctorname;
		this.speciality = speciality;
		this.location = location;
		this.hospitalname = hospitalname;
		this.mobileno = mobileno;
		this.email = email;
		this.password = password;
		this.chargedpervisit = chargedpervisit;
	}

	public int getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public long getMobileno() {
		return mobileno;
	}

	public void setMobileno(long mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public double getChargedpervisit() {
		return chargedpervisit;
	}

	public void setChargedpervisit(double chargedpervisit) {
		this.chargedpervisit = chargedpervisit;
	}
	
	
	
	

}
