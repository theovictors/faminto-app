package server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import server.daos.ProdutoDAO;

@Controller
@RequestMapping("/produto")
public class ProdutoController {
	
	@Autowired
	private ProdutoDAO produtoDAO;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("produto/list");
		
		mv.addObject("produtos", produtoDAO.findAll());
		
		return mv;
	}
	
}
