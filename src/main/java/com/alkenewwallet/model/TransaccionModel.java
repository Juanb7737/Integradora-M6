package com.alkenewwallet.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "transaccion")
public class TransaccionModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int transaccion_id;
	@Column(name = "importe")
	private double importe;
	@Column(name = "transaccion_date")
	private LocalDateTime transacciondate;
	@ManyToOne
	@JoinColumn(name = "sender_user_id", referencedColumnName = "user_id")
	private UsuarioModel usuariosender;
	@ManyToOne
	@JoinColumn(name = "receiver_user_id", referencedColumnName = "user_id")
	private UsuarioModel usuarioreceiver;

	// Getters and Setters
	public int getTransaccion_id() {
		return transaccion_id;
	}

	public void setTransaccion_id(int transaccion_id) {
		this.transaccion_id = transaccion_id;
	}

	public double getImporte() {
		return importe;
	}

	public void setImporte(double importe) {
		this.importe = importe;
	}

	public LocalDateTime getTransacciondate() {
		return transacciondate;
	}

	public void setTransacciondate(LocalDateTime transacciondate) {
		this.transacciondate = transacciondate;
	}

	public UsuarioModel getUsuariosender() {
		return usuariosender;
	}

	public void setUsuariosender(UsuarioModel usuariosender) {
		this.usuariosender = usuariosender;
	}

	public UsuarioModel getUsuarioreceiver() {
		return usuarioreceiver;
	}

	public void setUsuarioreceiver(UsuarioModel usuarioreceiver) {
		this.usuarioreceiver = usuarioreceiver;
	}

}
