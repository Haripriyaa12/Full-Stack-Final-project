package com.test.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.test.model.Availabilitydates;
import com.test.repository.Availabiltyrepository;
import com.test.service.Availabilityservice;
@Service
public class Availabilityserviceimpl implements Availabilityservice {
	
	private Availabiltyrepository availabilityrepository;
	public Availabilityserviceimpl(Availabiltyrepository availabilityrepository) {
		super();
		this.availabilityrepository=availabilityrepository;
	}

	@Override
	public List<Availabilitydates> getallavailability() {
		List<Availabilitydates>availabilities=new ArrayList<Availabilitydates>();
		for(Availabilitydates availabilitydates:availabilityrepository.findAll()) {
			availabilities.add(availabilitydates);
		}
		return availabilities;
	}

	@Override
	public Availabilitydates saveavailability(Availabilitydates availabilitydates) {
		return availabilityrepository.save(availabilitydates);
	}

	@Override
	public void deleteavailability(int availabilityid) {
		availabilityrepository.deleteById(availabilityid);
		
	}

}
