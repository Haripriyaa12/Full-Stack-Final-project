package com.test.service;

import java.util.List;

import com.test.model.Appointment;

public interface Appointmentservice {
	
	List<Appointment> getallappointments();
	Appointment saveappointment(Appointment appointment);
	public void deleteappointment(int appointmentid);

}
