package com.test.service;

import java.util.List;

import com.test.model.Patient;

public interface Patientservice {
	
	List<Patient> getallpatients();
	Patient savepatient(Patient patient);
	public void deletepatient(int patientid);


}
