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

import com.test.model.Doctor;
import com.test.service.Doctorservice;


@Controller
public class DoctorController {
	@Autowired
	private Doctorservice doctorservice;
	
	@GetMapping("/DoctorHome")
	public String Homepage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_DOCTORHOME");
		return "Doctor";
	}
	
	@GetMapping("/registerdoctor")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode","MODE_DOCTORREGISTER");
		return "Doctor";
	}
	
	@PostMapping("/savedoctor")
	public String Reguser(@ModelAttribute Doctor doctor,BindingResult bindingresult,HttpServletRequest request ) {
		doctorservice.savedoctor(doctor);
		request.setAttribute("mode","MODE_DOCTORHOME");
		return "Doctor";
	}
	@GetMapping("/listdoctor")
	public String getalldoctors(HttpServletRequest request) {
		request.setAttribute("doctors",doctorservice.getalldoctors());
		request.setAttribute("mode","LIST_DOCTOR");
		return "Doctor";
		
	}
	
	@RequestMapping("/deletedoctor")
	public String delete(@RequestParam int doctorid,HttpServletRequest request) {
		doctorservice.deletedoctor(doctorid);
		request.setAttribute("doctors",doctorservice.getalldoctors());
		request.setAttribute("mode","LIST_DOCTOR");
		return "Doctor";
	

}

}
