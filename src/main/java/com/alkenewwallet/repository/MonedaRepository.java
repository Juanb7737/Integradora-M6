package com.alkenewwallet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.alkenewwallet.model.MonedaModel;

public interface MonedaRepository extends JpaRepository<MonedaModel, Integer> {

}
