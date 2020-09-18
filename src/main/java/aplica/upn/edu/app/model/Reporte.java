package aplica.upn.edu.app.model;

public class Reporte {
	public Reporte(int idReporte, String descripcion, String nombreReportante, String correoElectronico) {
		super();
		this.idReporte = idReporte;
		this.descripcion = descripcion;
		this.nombreReportante = nombreReportante;
		this.correoElectronico = correoElectronico;
	}
	private int idReporte;
	private String descripcion;
	private String nombreReportante;
	private String correoElectronico;
	public int getIdReporte() {
		return idReporte;
	}
	public void setIdReporte(int idReporte) {
		this.idReporte = idReporte;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getNombreReportante() {
		return nombreReportante;
	}
	public void setNombreReportante(String nombreReportante) {
		this.nombreReportante = nombreReportante;
	}
	public String getCorreoElectronico() {
		return correoElectronico;
	}
	public void setCorreoElectronico(String correoElectronico) {
		this.correoElectronico = correoElectronico;
	}
	public Reporte() {
		
	}
}
