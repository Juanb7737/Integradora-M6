package com.alkenewwallet.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "cuenta")
public class CuentaModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idcuenta;
	
	@Column(name = "saldo")
	private double saldo;
	@Column(name = "banco")
	private String banco;
	@Column(name = "numcuenta")
	private int numcuenta;
	
	@ManyToOne
    @JoinColumn(name = "run_cliente")
	private ClienteModel cliente ;
	
	// Getters and Setters

	public int getIdcuenta() {
		return idcuenta;
	}

	public void setIdcuenta(int idcuenta) {
		this.idcuenta = idcuenta;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public String getBanco() {
		return banco;
	}

	public void setBanco(String banco) {
		this.banco = banco;
	}

	public int getNumcuenta() {
		return numcuenta;
	}

	public void setNumcuenta(int numcuenta) {
		this.numcuenta = numcuenta;
	}

	public ClienteModel getCliente() {
		return cliente;
	}

	public void setCliente(ClienteModel cliente) {
		this.cliente = cliente;
	}
	
	
	
	
}
