package com.test.service;

import java.util.List;

import com.test.model.Availabilitydates;

public interface Availabilityservice {

	List<Availabilitydates> getallavailability();
	Availabilitydates saveavailability(Availabilitydates availabilitydates);
	public void deleteavailability(int availabilityid);
}
