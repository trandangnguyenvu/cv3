package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import bean.User;

public class UserMapper implements RowMapper<User> {
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUsername(rs.getString("user_mail"));
		user.setPassword(rs.getString("password"));	
		user.setName(rs.getString("user_name"));

		return user;
	}
}
