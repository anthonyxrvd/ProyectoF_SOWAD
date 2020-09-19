package aplica.upn.edu.app.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import aplica.upn.edu.app.dao.EmpleadoDao;
import aplica.upn.edu.app.model.Empleado;


public class EmpleadoImpl implements EmpleadoDao{

	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}  
	
	
	
	@Override
	public List<Empleado> listarE() {
		// TODO Auto-generated method stub
		return template.query("select *from empleado", new RowMapper<Empleado>() {
			 public Empleado mapRow(ResultSet rs, int row) throws SQLException {    
				 Empleado e = new Empleado();
					e.setId(rs.getInt(1));
					e.setNombre(rs.getString(2));
					e.setApellido(rs.getString(3));
					e.setCargo(rs.getString(4));
					e.setTelefono(rs.getInt(5));
					e.setEstado(rs.getString(6));
					//e.setImagen(rs.getString(7));
					
					return e;
			 }
		
		});
	}



	@Override
	public int guardarE(Empleado e) {
		// TODO Auto-generated method stub
		  String sql="insert into empleado(Nombre,Apellido,cargo,telefono,estado) values('"+e.getNombre()+"','"+e.getApellido()+"','"+e.getCargo()+"',"+e.getTelefono()+",'"+e.getEstado()+"')";    
		    return template.update(sql);
	}



	@Override
	public int actualizarE(Empleado e) {
		// TODO Auto-generated method stub
		String sql="update empleado set Nombre='"+e.getNombre()+"',Apellido='"+e.getApellido()+"',cargo='"+e.getCargo()+"',telefono="+e.getTelefono()+",estado='"+e.getEstado()+"' where id="+e.getId()+"";
		return template.update(sql);
	}



	@Override
	public int eliminarE(int id) {
		// TODO Auto-generated method stub
		String sql="delete from empleado where id="+id+"";
		return template.update(sql);
	}



	@Override
	public Empleado buscarE(int id) {
		// TODO Auto-generated method stub
		String sql="select *from empleado where id=?";
		return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Empleado>(Empleado.class));
	}
}
