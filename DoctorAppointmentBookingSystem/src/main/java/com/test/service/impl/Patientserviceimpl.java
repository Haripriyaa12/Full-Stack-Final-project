package com.test.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.test.model.Patient;
import com.test.repository.Patientrepository;
import com.test.service.Patientservice;

@Service
public class Patientserviceimpl implements Patientservice {
	
	
	private Patientrepository patientrepository;
	public Patientserviceimpl(Patientrepository patientrepository) {
		super();
		this.patientrepository=patientrepository;
	}

	@Override
	public List<Patient> getallpatients() {
		List<Patient>patients=new ArrayList<Patient>();
		for(Patient patient:patientrepository.findAll()) {
			patients.add(patient);
		}
		return patients;
	}

	@Override
	public Patient savepatient(Patient patient) {
		return patientrepository.save(patient);
	
	}

	@Override
	public void deletepatient(int patientid) {
		patientrepository.deleteById(patientid);
		
	}

}
