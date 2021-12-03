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

import com.test.model.Admin;
import com.test.service.Adminservice;

@Controller
public class Admincontroller {
	@Autowired
	private Adminservice adminservice;
	
	@GetMapping("/AdminHome")
	public String Homepage(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADMINHOME");
		return "Admin";
	}
	
	@GetMapping("/adminregister")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode","MODE_ADMINREGISTER");
		return "Admin";
	}
	
	@PostMapping("/saveadmin")
	public String Reguser(@ModelAttribute Admin admin,BindingResult bindingresult,HttpServletRequest request ) {
		adminservice.saveadmin(admin);
		request.setAttribute("mode","MODE_ADMINHOME");
		return "Admin";
	}
	
	@GetMapping("/listadmins")
	public String getalladmins(HttpServletRequest request) {
		request.setAttribute("admins",adminservice.getalladmins());
		request.setAttribute("mode","LIST_ADMINS");
		return "Admin";
		
	}
	
	@RequestMapping("/deleteadmin")
	public String delete(@RequestParam int adminid,HttpServletRequest request) {
		adminservice.deleteadmin(adminid);
		request.setAttribute("admins",adminservice.getalladmins());
		request.setAttribute("mode","LIST_ADMINS");
		return "Admin";
	

}
}
