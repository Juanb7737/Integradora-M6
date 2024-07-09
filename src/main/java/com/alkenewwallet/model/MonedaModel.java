package com.alkenewwallet.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "moneda")
public class MonedaModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int currency_id;
	@Column(name = "current_name")
	private String current_name;
	@Column(name = "currency_symbol")
	private String currency_symbol;

	// Getters and setters
	public int getCurrency_id() {
		return currency_id;
	}

	public void setCurrency_id(int currency_id) {
		this.currency_id = currency_id;
	}

	public String getCurrent_name() {
		return current_name;
	}

	public void setCurrent_name(String current_name) {
		this.current_name = current_name;
	}

	public String getCurrency_symbol() {
		return currency_symbol;
	}

	public void setCurrency_symbol(String currency_symbol) {
		this.currency_symbol = currency_symbol;
	}

}
