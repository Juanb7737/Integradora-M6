package com.alkenewwallet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alkewallet")
public class MenuController {

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
        return "transferencia";
	}
	
	@GetMapping("/retiro")
	public String retiro(Model model) {
		model.addAttribute("nombre", "juan");
		return "retiro";
	}
	
}
	
