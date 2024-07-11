package com.alkenewwallet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.alkenewwallet.model.UsuarioModel;
import com.alkenewwallet.repository.CuentaRepository;
import com.alkenewwallet.repository.TransaccionRepository;
import com.alkenewwallet.repository.UsuarioRepository;

@Controller
@SessionAttributes({ "email", "usuario" })
@RequestMapping("/alkewallet")
public class MenuController {
	
	@Autowired
	private CuentaRepository cuentaR;
	@Autowired
	private UsuarioRepository usuarioR;
	@Autowired
	TransaccionRepository transaccionR;

	@GetMapping("/deposit")
	public String deposit(Model model) {

		model.addAttribute("nombre", "juan");
		return "deposit";
	}
	
	@GetMapping("/Menu")
    public String menu(Model model) {
        model.addAttribute("nombre", "juan");
        return "Menu"; // Asegúrate de tener un archivo menu.html en la carpeta de templates
    }
	
	@GetMapping("/envio")
    public String envio(Model model) {
        model.addAttribute("nombre", "juan");
        return "envio";
	}
	
	@GetMapping("/transferencia")
    public String transferencia(Model model) {
        model.addAttribute("nombre", "juan");
        
        String correo = (String) model.getAttribute("email");
        UsuarioModel usuario = usuarioR.consultarUsuarioPorCorreo(correo);

		Integer idEnvia = usuario.getUser_id();
		Integer idRecive = usuario.getUser_id();
		
		//System.out.println(usuario.getId());
		model.addAttribute("movimientos", transaccionR.obtenerPorId(idEnvia, idRecive));
        
        
        return "transferencia";
	}
	
	@GetMapping("/retiro")
	public String retiro(Model model) {
		model.addAttribute("nombre", "juan");
		return "retiro";
	}
	
}
	
