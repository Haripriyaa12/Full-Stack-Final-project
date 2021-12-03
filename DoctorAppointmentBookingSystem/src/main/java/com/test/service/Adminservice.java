package com.test.service;

import java.util.List;

import com.test.model.Admin;

public interface Adminservice {
	List<Admin> getalladmins();
	//List<User> getallusers();
	Admin saveadmin(Admin admin);
	public void deleteadmin(int adminid);

}
