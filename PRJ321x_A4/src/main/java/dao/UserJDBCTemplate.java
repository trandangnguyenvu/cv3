package dao;

import java.util.List;
import javax.sql.DataSource;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import bean.User;
import model.UserMapper;

public class UserJDBCTemplate implements UserDAO {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	
	

	
	public User getUser(String username) {

		try {
			String SQL = "select * from Account where user_mail = ?";
			User user = jdbcTemplateObject.queryForObject(SQL, new Object[] { username }, new UserMapper());

			return user;
		} catch (EmptyResultDataAccessException e) {
			return null;
		} 
	}
	
	

	
	public List<User> listUsers() {
		String SQL = "select * from Account";
		List<User> users = jdbcTemplateObject.query(SQL, new UserMapper());
		return users;
	}

	@Override
	public void create(String username, String password) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<User> listUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(String user) {
		// TODO Auto-generated method stub

	}
}
