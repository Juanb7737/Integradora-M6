package com.alkenewwallet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.alkenewwallet.model.CuentaModel;

public interface CuentaRepository extends JpaRepository<CuentaModel, Integer> {
	
	@Query("SELECT u FROM CuentaModel u WHERE u.cliente.run_cliente=:run ")
	CuentaModel obtenerCuenta(@Param("run") String run);
	
	@Modifying
	@Query("UPDATE CuentaModel c SET c.saldo =:saldo WHERE c.cliente.run_cliente =:run")
	void actualizarSaldoCuenta(@Param("saldo") Double saldo, @Param("run") String run);

}
