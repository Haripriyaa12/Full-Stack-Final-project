package com.test.service;

import java.util.List;

import com.test.model.Doctor;

public interface Doctorservice {
	
	List<Doctor> getalldoctors();
    Doctor savedoctor(Doctor doctor);
	public void deletedoctor(int doctorid);

}
