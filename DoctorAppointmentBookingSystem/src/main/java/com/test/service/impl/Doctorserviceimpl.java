package com.test.service.impl;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.test.model.Doctor;
import com.test.repository.Doctorrepository;
import com.test.service.Doctorservice;

@Service

public class Doctorserviceimpl implements Doctorservice {

	
	private Doctorrepository doctorrepository;
	public Doctorserviceimpl(Doctorrepository doctorrepository) {
		super();
		this.doctorrepository=doctorrepository;
	}
	@Override
	public List<Doctor> getalldoctors() {
		List<Doctor>doctors=new ArrayList<Doctor>();
		for(Doctor doctor:doctorrepository.findAll()) {
			doctors.add(doctor);
		}
		return doctors;
	}

	@Override
	public Doctor savedoctor(Doctor doctor) {
		return doctorrepository.save(doctor);
	}

	@Override
	public void deletedoctor(int doctorid) {
		doctorrepository.deleteById(doctorid);
		
	}
	
	

}
