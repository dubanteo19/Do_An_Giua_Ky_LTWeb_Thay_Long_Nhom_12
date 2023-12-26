package Services;

import java.util.List;

import Model.Product;
import Model.User;

public interface IUserService extends IGenericService<User>{
	boolean delete(User user);
	User findUserByEmail(String email);
	void signUp(User user);
	boolean verify(int userId);
}
