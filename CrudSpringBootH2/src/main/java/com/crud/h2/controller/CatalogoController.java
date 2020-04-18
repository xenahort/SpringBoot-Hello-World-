package com.crud.h2.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crud.h2.modelo.Catalogo;
import com.crud.h2.service.ICatalogoService;

@Controller
public class CatalogoController {
	@Autowired
	private ICatalogoService service;
	
	@RequestMapping("/listar")
	public String listar(Model model) {		
		model.addAttribute("catalogos",service.listar());
		return "indexCatalogo";
	}	
	
	@GetMapping("/nuevo")
	public String nuevo() {
		return "agregarCatalogo";
	}
	@PostMapping("/agregar")
	public String agregar(@Valid Catalogo p) {
		service.agregar(p);
		return "redirect:/listar";
	}
	
	@GetMapping("/editar/{id}")
	public String editar(@PathVariable int id, Model model) {
		Catalogo catalogo=service.listCatalogoId(id);
		model.addAttribute("catalogo", catalogo);
		return "editarCatalogo";
	}
	
	@PostMapping("/actualizar")
	public String actualizar(@Valid Catalogo p) {
		service.editar(p);
		return "redirect:/listar";
	}
	
	@GetMapping("/eliminar/{id}")
	public String delete(@PathVariable int id) {
		service.delete(id);
		return "redirect:/listar";
	}
	
	
	

}