package com.test.controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class Maincontroller {
	
	@GetMapping("/Main")
	public String Mainpage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_MAIN");
		return "Main";
	}
	@GetMapping("/Register")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode","MODE_REGISTER");
		return "Main";
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode","MODE_LOGIN");
		
		return "Main";
	}
	@RequestMapping("/login-user")
	public String loginuser(HttpServletRequest request) {
		    request.setAttribute("mode", "MODE_MAIN");
			return "Main";
	}

}
