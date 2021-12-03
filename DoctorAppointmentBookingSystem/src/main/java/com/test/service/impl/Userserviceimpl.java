package com.test.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.test.model.User;
import com.test.repository.Userrepository;
import com.test.service.Userservice;

@Service
public class Userserviceimpl implements Userservice {
	
	private Userrepository userrepository;
	public Userserviceimpl(Userrepository userrepository) {
		super();
		this.userrepository=userrepository;
	}

	@Override
public User saveuser(User user) {
	return userrepository.save(user);
}

@Override
public List<User> getallusers() {
	List<User>users=new ArrayList<User>();
	for(User user:userrepository.findAll()) {
		users.add(user);
	}
	return users;
}


@Override
public void deleteuser(int userid) {
	userrepository.deleteById(userid);
	
}

/*@Override
public PatientLogin findByEmailandPassword(String email,String password) {
	return patientrepository.findByEmailandPassword(email, password);
}*/
	
	

}
