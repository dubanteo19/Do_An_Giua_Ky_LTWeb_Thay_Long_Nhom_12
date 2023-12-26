package RowMaper;

import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Status;
import Model.User;

public class UserMapper implements RowMapper<User> {

	@Override
	public User map(ResultSet r) {
		User user = new User();
		try {
			user.setId(r.getInt("id"));
			user.setEmail(r.getString("email"));
			user.setPasswordHash(r.getString("passwordHash"));
			user.setFullName(r.getString("fullName"));
			user.setStatus(new Status(r.getInt("statusId"), r.getString("description")));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

}
