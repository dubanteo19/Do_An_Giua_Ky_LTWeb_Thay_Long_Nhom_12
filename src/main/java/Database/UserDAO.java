package Database;

import java.util.List;

import Model.Product;
import Model.User;
import RowMaper.ProductMapper;
import RowMaper.RowMapper;
import RowMaper.UserMapper;

public class UserDAO extends AbtractDAO<User> implements IUserDAO {

	@Override
	public List<User> findUserByEmail(String email) {
		String sql = "SELECT * FROM users join status on status.id = users.statusId where email = ?";
		return querry(sql, new UserMapper(), email);
	}

	@Override
	public List<User> findUserById(int id) {
		String sql = "SELECT * FROM users where id = ?";
		return querry(sql, new UserMapper(), id);
	}

	@Override
	public int save(User user) {
		String sql = "INSERT INTO users(email,passwordHash,fullName,statusId) VALUES (?,?,?,?)";
		return save(sql, user.getEmail(), user.getPasswordHash(), user.getFullName(), user.getStatus());
	}

	@Override
	public List<User> findAll() {
		String sql = "SELECT * FROM users join status on status.id = users.statusId";
		return querry(sql, new UserMapper());
	}

	@Override
	public boolean update(User user) {
		String sql = "UPDATE users SET email = ?, passwordHash = ?,fullName=?,status=? WHERE id = ?";
		return update(sql, user.getEmail(), user.getPasswordHash(), user.getFullName(), user.getStatus(), user.getId());
	}

	@Override
	public boolean delete(User user) {
		String sql = "DELETE FROM users WHERE id = ?";
		return update(sql, user.getId());
	}

}
