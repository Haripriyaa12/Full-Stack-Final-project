package com.test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patient")
public class Patient {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int patientid;
	
	private String patientname;
	private long mobileno;
	private String email;
	private String password;
	private String bloodgroup;
	private String gender;
	private int age;
	private String address;
	
	public Patient() {
		
	}
	
	public Patient(String patientname, long mobileno, String email, String password, String bloodgroup, String gender,
			int age, String address) {
		super();
		this.patientname = patientname;
		this.mobileno = mobileno;
		this.email = email;
		this.password = password;
		this.bloodgroup = bloodgroup;
		this.gender = gender;
		this.age = age;
		this.address = address;
	}

	public int getPatientid() {
		return patientid;
	}

	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
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

	public String getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	

}
