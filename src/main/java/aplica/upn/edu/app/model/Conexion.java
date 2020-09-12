package aplica.upn.edu.app.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {




	public Connection conectar() {
		Connection conexion=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/personal","root","ordaya789");
		}catch(Exception e) {
			System.out.println("error al cargar el controlador");
			e.printStackTrace();

		}
		
		return conexion;
	}
}
