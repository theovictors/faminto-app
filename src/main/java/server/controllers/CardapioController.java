package server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import server.daos.ProdutoDAO;

@Controller
public class CardapioController {

	@Autowired
	private ProdutoDAO produtoDAO;

	@RequestMapping("/cardapio")
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("cardapio/list");
		
		modelAndView.addObject("produtos", produtoDAO.findAll());
		
		return modelAndView;
	}
	
}
