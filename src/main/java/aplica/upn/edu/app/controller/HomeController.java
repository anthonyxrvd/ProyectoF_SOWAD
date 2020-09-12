package aplica.upn.edu.app.controller;

import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;

import aplica.upn.edu.app.model.Empleado;

@Controller
public class HomeController {
	/*@RequestMapping("validador")
	public ModelAndView getValidaLogin(HttpServletRequest req, HttpServletResponse resp) {
		
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
	
	@RequestMapping(value="/lista",method=RequestMethod.GET)
	public String irHome(Model model) {
	List<Empleado> empleados=getLista();
	model.addAttribute("Vempleado",empleados);
		return "planilla";
	}
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {
		return "login";
	}
	private List<Empleado>getLista(){
		SimpleDateFormat formatter =new SimpleDateFormat("dd-MM-yyyy");
		List<Empleado> lista =null;
		try {
			lista = new LinkedList<>();
			Empleado e = new Empleado();
			e.setId(1); e.setNombre("Anthony"); e.setApellido("Castañeda");
			e.setCargo("programador"); e.setFechaInicio(formatter.parse("02-05-2018"));
			e.setFechaFin(formatter.parse("02-05-2018"));
			e.setEstado("Activo");e.setTelefono(980989181); 
			e.setImagen("empleado.png");
			
			Empleado e2 = new Empleado();
			e2.setId(2); e2.setNombre("Carlos"); e2.setApellido("Ruiz");
			e2.setCargo("Administrador"); e2.setFechaInicio(formatter.parse("02-05-2018"));
			e2.setFechaFin(formatter.parse("02-05-2019"));
			e2.setEstado("Despedido");e2.setTelefono(942356153); 
			e2.setImagen("empleado.png");
			Empleado e3 = new Empleado();
			e3.setId(2); e2.setNombre("franklin"); e3.setApellido("aaaa");
			e3.setCargo("programador"); e3.setFechaInicio(formatter.parse("02-05-2018"));
			e3.setFechaFin(formatter.parse("02-05-2020"));
			e3.setEstado("Activo");e3.setTelefono(94657553); 
			e3.setImagen("empleado.png");
			lista.add(e);
			lista.add(e2);
			lista.add(e3);
			return lista;
		}
		catch(Exception e){
			return null;
		}
    }
	
	 @RequestMapping(value="/detail",method=RequestMethod.GET)
	    public String mostrarDetalle(Model model) {
	    	/*String tituloPelicula = "Anabelle";
	    	int duracion=136;
	    	double precio =50;
	    	model.addAttribute("titulo",tituloPelicula);
	    	model.addAttribute("duracion",duracion);
	    	model.addAttribute("precio",precio);*/
		 List<Empleado> empleados=getLista();
			//peliculas.add("A");
			//peliculas.add("B");
			//peliculas.add("C");

			model.addAttribute("Vempleado",empleados);
	    	return "detalle";
	 }
	 
	 
		@RequestMapping(value="/acceso",method=RequestMethod.GET)
		public String login() {
			
			return "login";
		}
		@RequestMapping(value="/data",method=RequestMethod.GET)
		public String data() {
			
			return "graficas";
		}
		@RequestMapping(value="/Principal",method=RequestMethod.GET)
		public String home() {
			
			return "home";
		}
		@RequestMapping(value="/fail",method=RequestMethod.GET)
		public String error() {
			
			return "error";
		}
		
		@RequestMapping(value="/perfil",method=RequestMethod.GET)
		public String perfil() {
			
			return "perfil";
		}
		@RequestMapping(value="/call",method=RequestMethod.GET)
		public String contacto() {
			
			return "contacto";
		}
		
	
}
