package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.test.model.Doctor;

public interface Doctorrepository extends JpaRepository<Doctor,Integer> {

}
