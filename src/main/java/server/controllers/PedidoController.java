package server.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import server.models.Pedido;

@Controller
public class PedidoController {

	@RequestMapping(value="/pedido/criar", method=RequestMethod.POST)
	public ModelAndView criar(Pedido pedido) {
		ModelAndView modelAndView = new ModelAndView("pedido/confirmado");
		
		System.out.println(pedido);
		
		return modelAndView;
	}
	
}
