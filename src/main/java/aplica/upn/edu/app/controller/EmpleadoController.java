package aplica.upn.edu.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import aplica.upn.edu.app.dao.EmpleadoDao;
import aplica.upn.edu.app.model.Empleado;

@Controller
public class EmpleadoController {

	@Autowired
	EmpleadoDao daoE;
	
	
	@RequestMapping("/nuevoE")
	public String showform(Model m) {
		m.addAttribute("command",new Empleado());
		return "nuevoEmpleado";
	}
	
	 @RequestMapping(value="/guardarE",method = RequestMethod.POST)
	 public String saveE(@ModelAttribute("Empleado") Empleado empleado) {
		 daoE.guardarE(empleado);
		 return "redirect:/Empleados";
	 }
	
	 @RequestMapping("/Empleados")
	 public String listadoE(Model m) {
		 List<Empleado> list=daoE.listarE();
		 m.addAttribute("list",list);
		 return "listaE";
	 }
	 
	 @RequestMapping(value="/Empleados/{id}")
	 public String editE(@PathVariable int id,Model m) {
		 Empleado h=daoE.buscarE(id);
		 m.addAttribute("command",h);
		 return "editaE";
	 }
	 
	 @RequestMapping(value="/editsaveE",method = RequestMethod.POST)
	  public String editsaveE(@ModelAttribute("e") Empleado e){
		 daoE.actualizarE(e);
		 return "redirect:/Empleados";
		 
	 }
	 
	 @RequestMapping(value="/eliminarE/{id}",method = RequestMethod.GET)    
	    public String eliminarE(@PathVariable("id")int id){    
	       daoE.eliminarE(id);
	        return "redirect:/Empleados";   
}
}
