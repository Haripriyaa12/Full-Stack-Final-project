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

import com.test.model.User;
import com.test.service.Userservice;




@Controller
public class Usercontroller {
	@Autowired
	private Userservice userservice;
	@GetMapping("/Home")
	public String Homepage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "Home";
	}
	
	
	@GetMapping("/userlist")
	public String getallpatients(HttpServletRequest request) {
		request.setAttribute("users",userservice.getallusers());
		request.setAttribute("mode","LIST_USERS");
		return "Home";
	}
	@PostMapping("/saveuser")
	public String Reguser(@ModelAttribute User user,BindingResult bindingresult,HttpServletRequest request ) {
		userservice.saveuser(user);
		request.setAttribute("mode","MODE_MAIN");
		return "Main";
	}
	
	@RequestMapping("/deleteuser")
	public String delete(@RequestParam int userid,HttpServletRequest request) {
		userservice.deleteuser(userid);
		request.setAttribute("users",userservice.getallusers());
		request.setAttribute("mode","LIST_USERS");
		return "Home";
	}
	
	
	
	

}
