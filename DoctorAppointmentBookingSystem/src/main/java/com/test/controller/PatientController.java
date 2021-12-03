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

import com.test.model.Patient;
import com.test.service.Patientservice;


@Controller
public class PatientController {

	@Autowired
	private Patientservice patientservice;
	
	@GetMapping("/PatientHome")
	public String Homepage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_PATIENTHOME");
		return "Patient";
	}
	
	@GetMapping("/registerpatient")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode","MODE_PATIENTREGISTER");
		return "Patient";
	}
	
	@PostMapping("/savepatient")
	public String Reguser(@ModelAttribute Patient patient,BindingResult bindingresult,HttpServletRequest request ) {
		patientservice.savepatient(patient);
		request.setAttribute("mode","MODE_PATIENTHOME");
		return "Patient";
	}
	@GetMapping("/listpatients")
	public String getallpatients(HttpServletRequest request) {
		request.setAttribute("patients",patientservice.getallpatients());
		request.setAttribute("mode","LIST_PATIENT");
		return "Patient";
		
	}
	
	@RequestMapping("/deletepatient")
	public String delete(@RequestParam int patientid,HttpServletRequest request) {
		patientservice.deletepatient(patientid);
		request.setAttribute("patients",patientservice.getallpatients());
		request.setAttribute("mode","LIST_PATIENT");
		return "Patient";
	

}
}
