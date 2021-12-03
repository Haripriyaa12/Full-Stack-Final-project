package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.test.model.Feedback;

public interface Feedbackrepository extends JpaRepository<Feedback,Integer> {

}
