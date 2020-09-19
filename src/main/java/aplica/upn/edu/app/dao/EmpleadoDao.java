package aplica.upn.edu.app.dao;

import java.util.List;

import aplica.upn.edu.app.model.Empleado;

public interface EmpleadoDao {

	public List<Empleado> listarE();
	public int guardarE(Empleado e);
	public int actualizarE(Empleado e);
	public int eliminarE(int id);
	public Empleado buscarE(int id);
}
