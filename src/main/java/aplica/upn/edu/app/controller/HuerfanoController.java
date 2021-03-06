package aplica.upn.edu.app.controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import aplica.upn.edu.app.dao.HuefanoDao;
import aplica.upn.edu.app.model.Huerfano;
import aplica.upn.edu.app.service.HuerfanoImpl;

@Controller
public class HuerfanoController {

	@Autowired
	HuefanoDao dao;



	@RequestMapping("/nuevo")
	public String showform(Model m) {
		m.addAttribute("command",new Huerfano());
		return "nuevoHuerfano";
	}

	@RequestMapping(value="/guardar")
	public String save(@ModelAttribute("Huerfano") Huerfano huerfano, BindingResult result,
			@RequestParam("fotoReferencial") MultipartFile multiPart,HttpServletRequest request, RedirectAttributes attributes) {	
		if (!multiPart.isEmpty()) {
			String fotoReferencial = HuerfanoImpl.guardarImagen(multiPart, request);  
			if (fotoReferencial!=null){ // La imagen si se subio				
				huerfano.setFotoReferencial(fotoReferencial);   // Asignamos el nombre de la imagen
			}
		}
		dao.guardar(huerfano);
		attributes.addFlashAttribute("msg", "Los datos de la pelicula fueron guardados!");
		return "redirect:/Huerfanos";
	}

	@RequestMapping("/Huerfanos")
	public String listado(Model m) {
		List<Huerfano> list=dao.listar();
		m.addAttribute("list",list);
		return "listaH";
	}

	@RequestMapping(value="/Huerfanos/{id}")
	public String edit(@PathVariable int id,Model m) {
		Huerfano h=dao.buscar(id);
		m.addAttribute("huerfano",h);
		return "editaH";
	}

	@RequestMapping(value="/detalles/{id}")
	public String detalles(@PathVariable int id,Model m) {
		Huerfano h=dao.buscar(id);
		m.addAttribute("huerfano",h);
		return "detalleH";
	}
	
	@RequestMapping(value="/editsave",method = RequestMethod.POST)
	public String editsave(@ModelAttribute("h") Huerfano h,BindingResult result,
			@RequestParam("fotoReferencial") MultipartFile multiPart,HttpServletRequest request, RedirectAttributes attributes){
		if (!multiPart.isEmpty()) { 
			String fotoReferencial = HuerfanoImpl.guardarImagen(multiPart, request); 
			if (fotoReferencial!=null){ // La imagen si se subio				
				h.setFotoReferencial(fotoReferencial);   // Asignamos el nombre de la imagen
			}
		}
		dao.actualizar(h);
		return "redirect:/Huerfanos";

	}

	@RequestMapping(value="/eliminar/{id}",method = RequestMethod.GET)    
	public String eliminar(@PathVariable("id")int id){    
		dao.eliminar(id);
		return "redirect:/Huerfanos";   
	}
	
	@RequestMapping(value="/Principal2",method = RequestMethod.GET)
	public String regresar() {
		
		return "redirect:/Huerfanos";
	}















	/*@RequestMapping(value="/Huerfanos",method=RequestMethod.GET)
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
			e.setEdad(6); e.setGenero("Femenino"); e.setFotoReferencial("ni�a.png");
			e.setEstado("Adoptado");

			Huerfano e2 = new Huerfano();
			e2.setId(2); e2.setNombre("Luis"); e2.setApellido("Cruz");
			e2.setEdad(12); e2.setGenero("Masculino"); e2.setFotoReferencial("ni�o.png");
			e2.setEstado("En albergue");
			lista.add(e);
			lista.add(e2);
			return lista;
		}
		catch(Exception e){
			return null;
		}
    }*/
}
