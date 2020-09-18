package aplica.upn.edu.app.service;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import aplica.upn.edu.app.dao.ReporteDao;
import aplica.upn.edu.app.model.Reporte;

public class ReporteImpl implements ReporteDao {
	
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		// TODO Auto-generated method stub
		this.dataSource=dataSource;
	}

	@Override
	public int insertarReporte(Reporte Reporte) {
		// TODO Auto-generated method stub
		String query="insert into reporte(descripcion,nombreReportante,correoElectronico)"
				+ "value(?,?,?)";
		jdbcTemplate = new JdbcTemplate(dataSource);
		Object[] inputs = new Object[]
				{
						Reporte.getDescripcion(),
						Reporte.getNombreReportante(),
						Reporte.getCorreoElectronico()
				};
		
		return jdbcTemplate.update(query,inputs);
	}

}
