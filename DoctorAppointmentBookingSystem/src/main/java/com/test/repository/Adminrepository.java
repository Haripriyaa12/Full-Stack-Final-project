package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.test.model.Admin;

public interface Adminrepository extends JpaRepository<Admin,Integer> {

}
