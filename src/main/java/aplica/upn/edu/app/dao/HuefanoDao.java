package aplica.upn.edu.app.dao;

import java.util.List;

import aplica.upn.edu.app.model.Huerfano;

public interface HuefanoDao {

	public List<Huerfano> listar();
	public int guardar(Huerfano h);
	public int actualizar(Huerfano h);
	public int eliminar(int id);
	public Huerfano buscar(int id);
}
