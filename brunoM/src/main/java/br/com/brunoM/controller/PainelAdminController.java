package br.com.brunoM.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.brunoM.model.AdministradorModel;
import br.com.brunoM.repository.AdministradorRepository;

@Controller
@RequestMapping("/painelAdmin")
public class PainelAdminController {
	
	@Autowired
	private AdministradorRepository repository;
	
	
	@PostMapping
	public String painelAdmin() {
		
		return "painelAdministrador";
	}
	
	@GetMapping
	public String painelAdminGet() {
		
		return "painelAdministrador";
	}
	
	
	
	@GetMapping("/perfil")
	public String perfil(@RequestParam String page, @RequestParam(required = false) Long id, Model model, @ModelAttribute("administradorModel") AdministradorModel administrador) {
		
		if("painelAdministradorPerfil".equals(page)) {
			model.addAttribute("administradorModel", repository.findById(id));
		}
		
		return "painelAdministradorPerfil";
	}
	
	@PostMapping("/perfil")
	public String perfilPost(){
		
		return "painelAdministradorPerfil";
	}
	
	
	@GetMapping("/formPerfilUpdate")
	public String perfilEdit(@RequestParam String page, @RequestParam(required = false) Long id, @ModelAttribute("administradorModel") AdministradorModel administrador, Model model, HttpSession session) {
		
		if("painelAdministradorPerfilEditar".equals(page)) {
			model.addAttribute("administradorModel", repository.findById(id));
		}
		
		return page;
	}

	
	
	@PutMapping("/perfilUpdate/{id}")
	public String perfilUpdate(@PathVariable("id") long id, AdministradorModel administrador, BindingResult bindResult, RedirectAttributes redirectAttributes) {
		
		if(bindResult.hasErrors()) {
			return "redirect:/perfilEditar";
		}
		
		administrador.setId(id);
		repository.update(administrador);
		
		return "redirect:/painelAdmin/perfil?page=painelAdministradorPerfil&id="+id;
	}
	
	@GetMapping("/chatbot")
	public String chatbot() {
		
		return "painelAdministradorChatbot";
	}
	
	@GetMapping("/bots")
	public String chatbots() {
		
		return "painelAdministradorChatbotBots";
	}
	
	@PostMapping("/botNovo")
	public String chatbotsNew() {
		
		return "painelAdministradorChatbotBots";
	}
	
	@GetMapping("/botNovo")
	public String botNovo() {
		
		return "painelAdministradorChatbotBotNovo";
	}
	
	@GetMapping("/botEditar")
	public String botEditar() {
		
		return "painelAdministradorChatbotBotEditar";
	}
	
	@PostMapping("/botEditar")
	public String botEditarNew() {
		
		return "painelAdministradorChatbotBotEditar";
	}
	
	
	
	
	@GetMapping("/segmentos")
	public String segmentos() {
		
		return "painelAdministradorChatbotSegmentos";
	}
	
	
	@GetMapping("/segmentoNovo")
	public String segmentoNovo() {
		
		return "painelAdministradorChatbotSegmentoNovo";
	}
	
	@PostMapping("/segmentoNovo")
	public String SegmentoNovorNew() {
		
		return "painelAdministradorChatbotSegmentos";
	}
	
	@GetMapping("/segmentoEditar")
	public String segmentoEditar() {
		
		return "painelAdministradorChatbotSegmentoEditar";
	}
	
	@PostMapping("/segmentoEditar")
	public String SegmentoEditarNew() {
		
		return "painelAdministradorChatbotSegmentoEditar";
	}
	
}









