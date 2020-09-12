package aplica.upn.edu.app.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import aplica.upn.edu.app.model.Huerfano;

@Controller
public class HuerfanoController {

	
	@RequestMapping(value="/Huerfanos",method=RequestMethod.GET)
	public String irHuerfanos(Model model) {
	List<Huerfano> huerfanos=getLista();
	model.addAttribute("Vhuerfano",huerfanos);
		return "listaH";
	}
	
	@RequestMapping(value="/Huerfanos/{id}",method=RequestMethod.GET)
	public String irHuerfanosDetalle(Model model,@PathVariable("id")int id) {
	List<Huerfano> huerfanos=getLista();
	model.addAttribute("Vhuerfano",huerfanos);
		return "detalleH";
	}
	
	
	private List<Huerfano>getLista(){
		List<Huerfano> lista =null;
		try {
			lista = new LinkedList<>();
			Huerfano e = new Huerfano();
			e.setId(1); e.setNombre("Ana"); e.setApellido("Diaz");
			e.setEdad(6); e.setGenero("Femenino"); e.setFotoReferencial("niña.png");
			e.setEstado("Adoptado");
			
			Huerfano e2 = new Huerfano();
			e2.setId(2); e2.setNombre("Luis"); e2.setApellido("Cruz");
			e2.setEdad(12); e2.setGenero("Masculino"); e2.setFotoReferencial("niño.png");
			e2.setEstado("En albergue");
			lista.add(e);
			lista.add(e2);
			return lista;
		}
		catch(Exception e){
			return null;
		}
    }
}
