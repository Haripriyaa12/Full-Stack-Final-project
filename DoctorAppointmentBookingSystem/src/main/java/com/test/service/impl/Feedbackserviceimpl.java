package com.test.service.impl;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import com.test.model.Feedback;
import com.test.repository.Feedbackrepository;
import com.test.service.Feedbackservice;
@Service

public class Feedbackserviceimpl implements Feedbackservice {
	
	private Feedbackrepository feedbackrepository;
	public Feedbackserviceimpl(Feedbackrepository feedbackrepository) {
		super();
		this.feedbackrepository=feedbackrepository;
	}

	@Override
	public List<Feedback> getallfeedback() {
		List<Feedback>feedbacks=new ArrayList<Feedback>();
		for(Feedback feedback:feedbackrepository.findAll()) {
			feedbacks.add(feedback);
		}
		return feedbacks;
	}

	@Override
	public Feedback savefeedback(Feedback feedback) {
		return feedbackrepository.save(feedback);
	}

	@Override
	public void deletefeedback(int feedbackid) {
		feedbackrepository.deleteById(feedbackid);
		
	}
	
	

}
