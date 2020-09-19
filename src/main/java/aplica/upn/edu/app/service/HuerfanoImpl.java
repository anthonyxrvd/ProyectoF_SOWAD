package aplica.upn.edu.app.service;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.multipart.MultipartFile;

import aplica.upn.edu.app.dao.HuefanoDao;
import aplica.upn.edu.app.model.Huerfano;

public class HuerfanoImpl implements HuefanoDao{

	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}  
	
	
	
	@Override
	public List<Huerfano> listar() {
		// TODO Auto-generated method stub
		return template.query("select *from Huerfano", new RowMapper<Huerfano>() {
			 public Huerfano mapRow(ResultSet rs, int row) throws SQLException {    
				 Huerfano h = new Huerfano();
					h.setId(rs.getInt(1));
					h.setNombre(rs.getString(2));
					h.setApellido(rs.getString(3));
					h.setEdad(rs.getInt(4));
					h.setGenero(rs.getString(5));
					h.setFotoReferencial(rs.getString(6));
					h.setEstado(rs.getString(7));
					h.setDescripcion(rs.getString(8));
					return h;
			 }
		
		});
	}



	@Override
	public int guardar(Huerfano h) {
		// TODO Auto-generated method stub
		  String sql="insert into huerfano(nombre,Apellido,edad,genero,fotoReferencial,estado,descripcion) values('"+h.getNombre()+"','"+h.getApellido()+"',"+h.getEdad()+",'"+h.getGenero()+"','"+h.getFotoReferencial()+"','"+h.getEstado()+"','"+h.getDescripcion()+"')";    
		    return template.update(sql);
	}



	@Override
	public int actualizar(Huerfano h) {
		// TODO Auto-generated method stub
		String sql="update huerfano set nombre='"+h.getNombre()+"',Apellido='"+h.getApellido()+"',edad="+h.getEdad()+",genero='"+h.getGenero()+"',fotoReferencial='"+h.getFotoReferencial()+"',estado='"+h.getEstado()+"',descripcion='"+h.getDescripcion()+"' where id="+h.getId()+"";
		return template.update(sql);
	}



	@Override
	public int eliminar(int id) {
		// TODO Auto-generated method stub
		String sql="delete from huerfano where id="+id+"";
		return template.update(sql);
	}



	@Override
	public Huerfano buscar(int id) {
		// TODO Auto-generated method stub
		String sql="select *from huerfano where id=?";
		return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Huerfano>(Huerfano.class));
	}
	
	
	public static String guardarImagen(MultipartFile multiPart, HttpServletRequest request) {
		// Obtenemos el nombre original del archivo.
		String nombreOriginal = multiPart.getOriginalFilename();
		// Reemplazamos en el nombre de archivo los espacios por guiones.
		nombreOriginal = nombreOriginal.replace(" ", "-");
		// Agregamos al nombre del archivo 8 caracteres aleatorios para evitar duplicados.
		String nombreFinal = randomAlphaNumeric(8)+nombreOriginal;
		// Obtenemos la ruta ABSOLUTA del directorio images.
		// apache-tomcat/webapps/cineapp/resources/images/
		String rutaFinal = request.getServletContext().getRealPath("/resources/images/");
		try {
			// Formamos el nombre del archivo para guardarlo en el disco duro.
			File imageFile = new File(rutaFinal + nombreFinal);
			System.out.println(imageFile.getAbsolutePath());
			// Aqui se guarda fisicamente el archivo en el disco duro.
			multiPart.transferTo(imageFile);
			return nombreFinal;
		} catch (IOException e) {
			System.out.println("Error " + e.getMessage());
			return nombreFinal;
		}
	}
	
	public static String randomAlphaNumeric(int count) {
		String CARACTERES = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
			int character = (int) (Math.random() * CARACTERES.length());
			builder.append(CARACTERES.charAt(character));
		}
		return builder.toString();
	}
	
}
