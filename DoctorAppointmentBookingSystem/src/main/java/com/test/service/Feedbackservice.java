package com.test.service;

import java.util.List;

import com.test.model.Feedback;

public interface Feedbackservice {
	
	List<Feedback> getallfeedback();
	Feedback savefeedback(Feedback feedback);
	public void deletefeedback(int feedbackid);

}
