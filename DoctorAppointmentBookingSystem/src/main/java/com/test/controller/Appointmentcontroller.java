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

import com.test.model.Appointment;
import com.test.service.Appointmentservice;


@Controller
public class Appointmentcontroller {
	@Autowired
	private Appointmentservice appointmentservice;
	
	@GetMapping("/AppointmentHome")
	public String Homepage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_APPOINTMENTHOME");
		return "Appointment";
	}
	
	@GetMapping("/appointmentregister")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode","MODE_APPOINTMENTREGISTER");
		return "Appointment";
	}
	
	@PostMapping("/saveappointment")
	public String Reguser(@ModelAttribute Appointment appointment,BindingResult bindingresult,HttpServletRequest request ) {
		appointmentservice.saveappointment(appointment);
		request.setAttribute("mode","MODE_APPOINTMENTHOME");
		return "Appointment";
	}
	@GetMapping("/listappointment")
	public String getallappointments(HttpServletRequest request) {
		request.setAttribute("appointments",appointmentservice.getallappointments());
		request.setAttribute("mode","LIST_APPOINTMENT");
		return "Appointment";
		
	}
	
	@RequestMapping("/deleteappointment")
	public String delete(@RequestParam int appointmentid,HttpServletRequest request) {
		appointmentservice.deleteappointment(appointmentid);
		request.setAttribute("appointments",appointmentservice.getallappointments());
		request.setAttribute("mode","LIST_APPOINTMENT");
		return "Appointment";
	

}
	
	

}
