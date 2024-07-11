package com.alkenewwallet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.alkenewwallet.model.TransaccionModel;

public interface TransaccionRepository extends JpaRepository<TransaccionModel, Integer> {
	
	@Query("SELECT t FROM TransaccionModel t WHERE t.usuariosender.user_id=:idEnvia OR t.usuarioreceiver.user_id=:idRecive ORDER BY t.transacciondate DESC")
	List<TransaccionModel> obtenerPorId(@Param("idEnvia") Integer idEnvia, @Param("idRecive") Integer idRecive);

}
