package Database;

import java.util.List;

import Model.User;

public interface IUserDAO extends GenericDAO<User> {
	List<User> findUserByEmail(String email);

	List<User> findUserById(int id);

	List<User> findAll();

	boolean update(User user);

	int save(User user);

	boolean delete(User user);

}
