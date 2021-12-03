package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.test.model.Appointment;

public interface Appointmentrepository extends JpaRepository<Appointment,Integer> {

}
