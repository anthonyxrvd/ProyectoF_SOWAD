package aplica.upn.edu.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import aplica.upn.edu.app.dao.ReporteDao;
import aplica.upn.edu.app.model.Reporte;

@Controller
public class ReportesController {
	@Autowired
	private ReporteDao reporteDao;

	@RequestMapping(value="/call",method=RequestMethod.GET)
	public String contacto() {
		
		return "contacto";
	}
	
	@PostMapping(value="/enviar")
	public String enviarReporte(Reporte reporte,
			@RequestParam("nombreReportante") String nombreReportante,
			@RequestParam("descripcion") String descripcion, @RequestParam("correoElectronico") String correoElectronico ) {
		try {
			Reporte r= new Reporte();
			r.setNombreReportante(nombreReportante);
			r.setDescripcion(descripcion);
			r.setCorreoElectronico(correoElectronico);
			reporteDao.insertarReporte(r);
		}catch(Exception ex) {
				System.out.println(ex.toString());
		}
			return "redirect:/Principal";
	}
	
}
