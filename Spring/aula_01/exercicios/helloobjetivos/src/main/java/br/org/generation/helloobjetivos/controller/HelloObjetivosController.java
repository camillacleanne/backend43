package br.org.generation.helloobjetivos.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/objetivos")
public class HelloObjetivosController {
    
    @GetMapping
	public String objetivos() {
		return "<b>Objetivo de aprendizagem da semana:</b>"
				+ "<br /> "
				+ "<br /> Aprender a fazer um CRUD no Spring!";
	}
}
