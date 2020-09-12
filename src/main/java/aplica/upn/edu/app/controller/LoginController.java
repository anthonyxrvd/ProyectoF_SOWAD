package aplica.upn.edu.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.dao.UserDao;
import aplica.upn.edu.app.model.Login;
import aplica.upn.edu.app.model.User;

@Controller
public class LoginController {
	 @Autowired
	  UserDao userService;
	 

	/*@RequestMapping("validador")
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
	}*/
	
@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
@ModelAttribute("login") Login login) {
  ModelAndView mav = null;
  User user = userService.validar(login);
  if (null != user) {
  mav = new ModelAndView("home");
  mav.addObject("nombre", user.getNombre());
  } else {
  mav = new ModelAndView("login");
  mav.addObject("mensaje", "nombre o contraseña incorrecto!!");
  }
  return mav;
}
	
}
