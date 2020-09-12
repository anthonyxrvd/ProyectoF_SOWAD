package aplica.upn.edu.app.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.core.RowMapper;

import aplica.upn.edu.app.dao.UserDao;
import aplica.upn.edu.app.model.Login;
import aplica.upn.edu.app.model.User;

public class ContraseñaImpl implements UserDao {

	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	public void setDataSource(Object arg0) {
		// TODO Auto-generated method stub
		//this.dataSource=dataSource;
	}

	@Override
	public User validar(Login login) {
		String sql = "select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()
		+ "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size() > 0 ? users.get(0) : null;
	}


}

class UserMapper implements RowMapper<User> {
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setNombre(rs.getString("nombre"));
		return user;
	}
}
