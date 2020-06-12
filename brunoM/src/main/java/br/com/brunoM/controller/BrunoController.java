package br.com.brunoM.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.brunoM.model.AdministradorModel;
import br.com.brunoM.repository.AdministradorRepository;

@Controller
@RequestMapping("/")
public class BrunoController {
	
	@Autowired
	private AdministradorRepository repository;
	
	@GetMapping
	public String home() {
		
		return "home";
	}
	
	@GetMapping("possuiCadastro")
	public String possuiCadastro() {
		
		return "possuiCadastro";
	}
	
	@GetMapping("login")
	public String login() {
		
		return "login";
	}
	
	@GetMapping("cadastro")
	public String cadastro() {
		
		return "cadastro";
	}
	
	//Mapeamento do cadastro de um administrador
	@PostMapping("/novoAdmin")
	public String novoAdmin(AdministradorModel administrador, BindingResult bindResult, RedirectAttributes redirectAttributes, HttpSession session) {
		
		if(bindResult.hasErrors()) {
			return "redirect:/cadastro";
		}
		
		repository.save(administrador);
		session.setAttribute("administradorLogado", repository.findByEmail(administrador.getEmail()));
		
		return "redirect:/painelAdmin";
	}
	
	//Mapeamento do Delete de administrador
	@DeleteMapping("/deleteAdmin/{id}")
	public String deleteAdmin(@PathVariable long id, RedirectAttributes redirectAttributes) {
		
		repository.delete(id);
		
		return "redirect:/login";
	}
	
}
