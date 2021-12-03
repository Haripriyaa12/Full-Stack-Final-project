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

import com.test.model.Feedback;
import com.test.service.Feedbackservice;
@Controller

public class Feedbackcontroller {
	@Autowired
	private Feedbackservice feedbackservice;
	
	@GetMapping("/FeedbackHome")
	public String Homepage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_FEEDBACKHOME");
		return "Feedback";
	}
	
	@GetMapping("/feedbackregister")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode","MODE_FEEDBACKREGISTER");
		return "Feedback";
	}
	
	@PostMapping("/savefeedback")
	public String Reguser(@ModelAttribute Feedback feedback,BindingResult bindingresult,HttpServletRequest request ) {
        feedbackservice.savefeedback(feedback);
		request.setAttribute("mode","MODE_FEEDBACKHOME");
		return "Feedback";
	}
	@GetMapping("/feedbacklist")
	public String getallfeedbacks(HttpServletRequest request) {
		request.setAttribute("feedbacks",feedbackservice.getallfeedback());
		request.setAttribute("mode","LIST_FEEDBACKS");
		return "Feedback";
		
	}
	
	@RequestMapping("/deletefeedback")
	public String delete(@RequestParam int feedbackid,HttpServletRequest request) {
		feedbackservice.deletefeedback(feedbackid);
		request.setAttribute("feedbacks",feedbackservice.getallfeedback());
		request.setAttribute("mode","LIST_FEEDBACKS");
		return "Feedback";
	

}


}
