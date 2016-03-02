package tallerweb.springmvc.controllers;


import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tallerweb.springmvc.model.Sanguchetto;
import tallerweb.springmvc.model.Ingrediente;
import tallerweb.springmvc.model.Persona;
import tallerweb.springmvc.model.Stock;
import tallerweb.springmvc.model.TipoIngrediente;

@Controller
public class SanguchetoController {
	
	

	@RequestMapping("/stock")
	public String mostrarStock(Model model) {
		
		Stock stock = Stock.getInstance();
		Map<Ingrediente, Integer> ingredientes = stock.obtenerStock();
		model.addAttribute("lista", ingredientes);
		return "stock";
	
	}
	@RequestMapping("/altaproducto")
	public String agregarProducto(Ingrediente ingrediente) {
		
		Stock stock = Stock.getInstance();
		stock.agregarIngrediente(ingrediente);
		return "stock";
	
	}
}
