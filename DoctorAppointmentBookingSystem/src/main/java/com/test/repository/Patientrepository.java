package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.test.model.Patient;

public interface Patientrepository extends JpaRepository<Patient,Integer> {

}
