package aplica.upn.edu.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Validar {
	@RequestMapping("validador")
	public ModelAndView getValidaLogin(HttpServletRequest req, HttpServletResponse resp) {
		//@GetMapping(value="/create")
		ModelAndView modelo = new ModelAndView();
		String usuario=req.getParameter("usuario");
		String password=req.getParameter("password");
		if(usuario.equals("antho")&&password.equals("1234")) {
			modelo.setViewName("home");
		}else {
			modelo.setViewName("error");
		}
		return modelo;
	}
}
