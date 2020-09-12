package aplica.upn.edu.app.dao;

import aplica.upn.edu.app.model.Login;
import aplica.upn.edu.app.model.User;


public interface UserDao {

	User validar(Login login);
}
