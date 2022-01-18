package br.org.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 
 * /@RestController: Annotation (Anotação), que indica que a Classe é uma RestController,
 * ou seja, é responsável por responder às requisições http enviadas para um endpoint
 * (endereço) definido na anotação @RequestMapping
 * 
 * @RequestMapping("/postagens"): Annotation (Anotação), que indica o endpoint (endereço) 
 * que a controladora responderá as requisições 
 * 
 */
 
@RestController
@RequestMapping("/hello")
public class HelloController {

	/**
	 * Exibir a mensagem
	 *  
	 * /@GetMapping: Annotation (Anotação), que indica que o método abaixo responderá todaas as 
	 * requisições do tipo GET que forem enviadas no endpoint /hello
	 * 
	 * O Método hello() será do tipo String porque ele retornará uma String (Hello World!)
	 * 
	 * return "Hello World!";: Retorna a mensagem
     * 
     * Para Execute a API e acesse pelo seu Navegador da Internet o endereço: 
     * 
     * http://localhost:8080/hello
	 *
	 */

	@GetMapping
	public String hello() {
		
		return "Hello World!";
		
	}
	
}
