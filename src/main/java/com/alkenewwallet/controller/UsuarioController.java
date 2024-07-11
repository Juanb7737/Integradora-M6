package com.alkenewwallet.controller;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.alkenewwallet.model.ClienteModel;
import com.alkenewwallet.model.CuentaModel;
import com.alkenewwallet.model.UsuarioModel;
import com.alkenewwallet.repository.ClienteRepository;
import com.alkenewwallet.repository.CuentaRepository;
import com.alkenewwallet.repository.UsuarioRepository;

@Controller
@SessionAttributes({ "email", "usuario" })
@RequestMapping("/alkewallet")
public class UsuarioController {
	@Autowired
	private UsuarioRepository usuarioR;

	@Autowired
	private ClienteRepository clienteR;
	
	@Autowired
	CuentaRepository cuentaR;

	@PostMapping("/nuevo")
	public String crearUsuario(@RequestParam String nombre1, @RequestParam String nombre2,
			@RequestParam String apellidopaterno, @RequestParam String apellidomaterno, @RequestParam String email,
			@RequestParam String run_cliente, @RequestParam String password , @RequestParam String banco, @RequestParam Integer numcuenta) {

		ClienteModel cliente = new ClienteModel();
		cliente.setRun_cliente(run_cliente);
		cliente.setNombre1(nombre1);
		cliente.setNombre2(nombre2);
		cliente.setApellidopaterno(apellidopaterno);
		cliente.setApellidomaterno(apellidomaterno);
		
		clienteR.save(cliente);
		
		CuentaModel cuenta = new CuentaModel();
		cuenta.setBanco(banco);
		cuenta.setNumcuenta(numcuenta);
		cuenta.setSaldo(0);
		cuenta.setCliente(cliente);
		cuentaR.save(cuenta);
		

		UsuarioModel usuario = new UsuarioModel();
		usuario.setNombre(nombre1 + " " + nombre2 + " " + apellidopaterno + " " + apellidomaterno);
		
		usuario.setCorreo(email);
		usuario.setContrasena(password);

		usuario.setCliente(cliente);
		usuarioR.save(usuario);

		return"index"; 
	}

	@GetMapping("/index")
	public String index(Model model) {

		model.addAttribute("nombre", "juan");
		return "index";
	}

	@PostMapping("/validarlogin")
	public String validarLogin(@RequestParam String email, @RequestParam String password,  Model model) {

		int resultado = usuarioR.validarLogin(email, password);
		System.out.println(resultado);
		if (resultado == 0) {
			return "index";
		}
		model.addAttribute("email", email);
		return "Menu";

	}

	@ResponseBody
	@PostMapping("/consultarClientePorRun")
	public boolean consultarClientePorRun(@RequestParam String Run) {
		boolean resultado = clienteR.existsById(Run);
		if (resultado) {
			return resultado;
		}
		return resultado;
	}

	@GetMapping("/obtenerId/{id}")
	private ResponseEntity<UsuarioModel> obtenerId(@PathVariable("id") Integer id) {
		Optional<UsuarioModel> optional = usuarioR.findById(id);
		if (optional.isPresent())
			return new ResponseEntity<>(optional.get(), HttpStatus.OK);
		return new ResponseEntity<>(new UsuarioModel(), HttpStatus.NOT_FOUND);
	}
}