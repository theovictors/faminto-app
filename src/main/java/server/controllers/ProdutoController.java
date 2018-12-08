package server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import server.daos.ProdutoDAO;
import server.models.Produto;

@Controller
@RequestMapping("/produto")
public class ProdutoController {
	
	@Autowired
	private ProdutoDAO produtoDAO;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("produto/list");
		
		modelAndView.addObject("produtos", produtoDAO.findAll());
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public ModelAndView form() {
		ModelAndView modelAndView = new ModelAndView("produto/form");
	
	
		return modelAndView;
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public ModelAndView save(Produto produto) {
		ModelAndView modelAndView = new ModelAndView("redirect:/produto");
	
		produtoDAO.save(produto);
	
		return modelAndView;
	}
	
}
