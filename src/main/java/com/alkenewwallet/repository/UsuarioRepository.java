package com.alkenewwallet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.alkenewwallet.model.UsuarioModel;

public interface UsuarioRepository extends JpaRepository<UsuarioModel, Integer> {
	
	 

	@Query("SELECT u FROM UsuarioModel u WHERE u.id=:id ")
    UsuarioModel obtenerUsuarioPorId(@Param("id") Integer id);

    @Query("SELECT u FROM UsuarioModel u WHERE u.correo=:correo")
    UsuarioModel consultarUsuarioPorCorreo(@Param("correo") String correo);

    @Query("SELECT count(*) FROM UsuarioModel u WHERE u.correo=:correo and u.contrasena=:contrasena")
    public int validarLogin(@Param("correo") String correo, @Param("contrasena") String contrasena);
	
}
