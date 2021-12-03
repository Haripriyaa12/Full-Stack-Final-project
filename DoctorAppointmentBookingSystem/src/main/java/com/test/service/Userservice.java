package com.test.service;

import java.util.List;

import com.test.model.User;

public interface Userservice {
	
	User saveuser(User user);
	List<User> getallusers();
	public void deleteuser(int userid);
	

}
