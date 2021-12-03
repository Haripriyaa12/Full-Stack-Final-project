package com.test.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.test.model.Admin;

import com.test.repository.Adminrepository;

import com.test.service.Adminservice;

@Service
public class Adminserviceimpl implements Adminservice {
	
	private Adminrepository adminrepository;
	public Adminserviceimpl(Adminrepository adminrepository) {
		super();
		this.adminrepository=adminrepository;
	}
	/*private Userrepository userrepository;
	public Adminserviceimpl(Userrepository userrepository) {
		super();
		this.userrepository=userrepository;
	}*/
	@Override
	public List<Admin> getalladmins() {
		List<Admin>admins=new ArrayList<Admin>();
		for(Admin admin:adminrepository.findAll()) {
			admins.add(admin);
		}
		return admins;
		
	}
	/*@Override
	public List<User> getallusers() {
		List<User>users=new ArrayList<User>();
		for(User user:userrepository.findAll()) {
			users.add(user);
		}
		return users;
	}*/
	@Override
	public Admin saveadmin(Admin admin) {
		return adminrepository.save(admin);
	}
	@Override
	public void deleteadmin(int adminid) {
		adminrepository.deleteById(adminid);
		
	}
	
	

}
