package com.alkenewwallet.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "cliente")
public class ClienteModel {
	@Id
	private String run_cliente;
	@Column(name = "nombre1")
	private String nombre1;
	@Column(name = "nombre2")
	private String nombre2;
	@Column(name = "apellidopaterno")
	private String apellidopaterno;
	@Column(name = "apellidomaterno")
	private String apellidomaterno;

	public String getRun_cliente() {
		return run_cliente;
	}

	public void setRun_cliente(String run_cliente) {
		this.run_cliente = run_cliente;
	}

	public String getNombre1() {
		return nombre1;
	}

	public void setNombre1(String nombre1) {
		this.nombre1 = nombre1;
	}

	public String getNombre2() {
		return nombre2;
	}

	public void setNombre2(String nombre2) {
		this.nombre2 = nombre2;
	}

	public String getApellidopaterno() {
		return apellidopaterno;
	}

	public void setApellidopaterno(String apellidopaterno) {
		this.apellidopaterno = apellidopaterno;
	}

	public String getApellidomaterno() {
		return apellidomaterno;
	}

	public void setApellidomaterno(String apellidomaterno) {
		this.apellidomaterno = apellidomaterno;
	}

}
