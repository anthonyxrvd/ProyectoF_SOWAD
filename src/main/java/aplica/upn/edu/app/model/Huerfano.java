package aplica.upn.edu.app.model;

public class Huerfano {
private int id;
private String nombre;
private String Apellido;
private int edad;
String genero;
private String fotoReferencial;
String estado;
@Override
public String toString() {
	return "Huerfano [id=" + id + ", nombre=" + nombre + ", Apellido=" + Apellido + ", edad=" + edad + ", genero="
			+ genero + ", fotoReferencial=" + fotoReferencial + ", estado=" + estado + "]";
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getNombre() {
	return nombre;
}
public void setNombre(String nombre) {
	this.nombre = nombre;
}
public String getApellido() {
	return Apellido;
}
public void setApellido(String apellido) {
	Apellido = apellido;
}
public int getEdad() {
	return edad;
}
public void setEdad(int edad) {
	this.edad = edad;
}
public String getGenero() {
	return genero;
}
public void setGenero(String genero) {
	this.genero = genero;
}
public String getFotoReferencial() {
	return fotoReferencial;
}
public void setFotoReferencial(String fotoReferencial) {
	this.fotoReferencial = fotoReferencial;
}
public String getEstado() {
	return estado;
}
public void setEstado(String estado) {
	this.estado = estado;
}



}
