package com.test.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.test.model.Appointment;
import com.test.repository.Appointmentrepository;
import com.test.service.Appointmentservice;

@Service
public class Appointmentserviceimpl implements Appointmentservice {
	
	private Appointmentrepository appointmentrepository;
	public Appointmentserviceimpl(Appointmentrepository appointmentrepository ) {
		super();
		this.appointmentrepository=appointmentrepository;;
	}


	@Override
	public List<Appointment> getallappointments() {
		List<Appointment>appointments=new ArrayList<Appointment>();
		for(Appointment appointment:appointmentrepository.findAll()) {
			appointments.add(appointment);
		}
		return appointments;
	}

	@Override
	public Appointment saveappointment(Appointment appointment) {
		return appointmentrepository.save(appointment);
	}

	@Override
	public void deleteappointment(int appointmentid) {
		appointmentrepository.deleteById(appointmentid);
		
	}
	
	

}
