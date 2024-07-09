package com.alkenewwallet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.alkenewwallet.model.TransaccionModel;

public interface TransaccionRepository extends JpaRepository<TransaccionModel, Integer> {

}
