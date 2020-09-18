package aplica.upn.edu.app.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

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
					
					return h;
			 }
		
		});
	}



	@Override
	public int guardar(Huerfano h) {
		// TODO Auto-generated method stub
		  String sql="insert into huerfano(nombre,Apellido,edad,genero,estado) values('"+h.getNombre()+"','"+h.getApellido()+"',"+h.getEdad()+",'"+h.getGenero()+"','"+h.getEstado()+"')";    
		    return template.update(sql);
	}



	@Override
	public int actualizar(Huerfano h) {
		// TODO Auto-generated method stub
		String sql="update huerfano set nombre='"+h.getNombre()+"',Apellido='"+h.getApellido()+"',edad="+h.getEdad()+",genero='"+h.getGenero()+"',estado='"+h.getEstado()+"' where id="+h.getId()+"";
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
}
