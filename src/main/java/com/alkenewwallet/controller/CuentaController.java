package com.alkenewwallet.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.alkenewwallet.model.UsuarioModel;
import com.alkenewwallet.repository.CuentaRepository;
import com.alkenewwallet.repository.UsuarioRepository;

import jakarta.transaction.Transactional;

@Controller
@SessionAttributes({ "email", "usuario" })
@RequestMapping("/alkewallet")
public class CuentaController {

	@Autowired
	private CuentaRepository cuentaR;
	@Autowired
	private UsuarioRepository usuarioR;
	
	@Transactional 
	@PostMapping("/RealizarDeposito")
	public String RealizarDeposito( @RequestParam Double saldo, Model model) {
		Date current = new Date();
		
		String correo = (String) model.getAttribute("email");
		UsuarioModel usuario = usuarioR.consultarUsuarioPorCorreo(correo);
		String run = usuario.getCliente().getRun_cliente();
		
		double saldo_nuevo = cuentaR.obtenerCuenta(run).getSaldo() + saldo;
				
	    // Actualizamos el saldo de la cuenta
		cuentaR.actualizarSaldoCuenta(saldo_nuevo, run);
		
		

		
		
		return "redirect:/alkewallet/deposit";
	}
	
	@Transactional 
	@PostMapping("/RealizarRetiro")
	public String RealizarRetiro( @RequestParam Double saldo, Model model) {
		Date current = new Date();
		
		String correo = (String) model.getAttribute("email");
		UsuarioModel usuario = usuarioR.consultarUsuarioPorCorreo(correo);
		String run = usuario.getCliente().getRun_cliente();
		
		double saldo_nuevo = cuentaR.obtenerCuenta(run).getSaldo() - saldo;
				
	    // Actualizamos el saldo de la cuenta
		cuentaR.actualizarSaldoCuenta(saldo_nuevo, run);
		
		

		
		
		return "redirect:/alkewallet/retiro";
	}
	
	
	
	
}