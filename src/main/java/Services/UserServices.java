package Services;

import java.util.List;

import javax.annotation.ManagedBean;
import javax.inject.Inject;

import Model.Product;
import Model.User;
import Database.IUserDAO;
import Database.UserDAO;
import RowMaper.ProductMapper;
import RowMaper.UserMapper;
import Utils.BHash;

@ManagedBean
public class UserServices implements IUserService {

	private IUserDAO userDAO = new UserDAO();

	@Override
	public List<User> findAll() {
		return userDAO.findAll();
	}

	@Override
	public int save(User t) {
		return userDAO.save(t);
	}

	@Override
	public boolean update(User t) {
		return userDAO.update(t);
	}

	@Override
	public boolean delete(User user) {
		return userDAO.delete(user);
	}

	@Override
	public User findUserByEmail(String email) {
		List<User> re = userDAO.findUserByEmail(email);
		if (re.size() > 0) {
			return re.get(0);
		}
		return null;
	}

	@Override
	public void signUp(User user) {
		userDAO.save(user);
	}

	public static void main(String[] args) {
		IUserService userService = new UserServices();
		System.out.println(userService.findUserByEmail("ngoc@gmai.com"));
	}

	@Override
	public boolean verify(int userId) {
		User u = userDAO.findUserById(userId).get(0);
		u.getStatus().setId(1);
		return update(u);
	}

}
