package server.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/produto")
public class ProdutoController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		
		return new ModelAndView("produto/list");
	}
	
}
