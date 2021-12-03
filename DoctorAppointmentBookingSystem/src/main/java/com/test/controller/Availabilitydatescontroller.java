package com.test.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.model.Availabilitydates;
import com.test.service.Availabilityservice;


@Controller

public class Availabilitydatescontroller {
	
	@Autowired
	private Availabilityservice availabilityservice;
	
	@GetMapping("/AvailabilityHome")
	public String Homepage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_AVAILABILITYHOME");
		return "Availabilitydates";
	}
	
	@GetMapping("/registeravailability")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode","MODE_AVAILABILITYREGISTER");
		return "Availabilitydates";
	}
	
	@PostMapping("/saveavailability")
	public String Reguser(@ModelAttribute Availabilitydates availabilitydates,BindingResult bindingresult,HttpServletRequest request ) {
        availabilityservice.saveavailability(availabilitydates);
		request.setAttribute("mode","MODE_AVAILABILITYHOME");
		return "Availabilitydates";
	}
	@GetMapping("/listavailability")
	public String getallavailabilitydates(HttpServletRequest request) {
		request.setAttribute("availabilities",availabilityservice.getallavailability());
		request.setAttribute("mode","LIST_AVAILABILITY");
		return "Availabilitydates";
		
	}
	
	@RequestMapping("/deleteavailability")
	public String delete(@RequestParam int availabilityid,HttpServletRequest request) {
		availabilityservice.deleteavailability(availabilityid);
		request.setAttribute("availabilities",availabilityservice.getallavailability());
		request.setAttribute("mode","LIST_AVAILABILITY");
		return "Availabilitydates";
	

}

}
