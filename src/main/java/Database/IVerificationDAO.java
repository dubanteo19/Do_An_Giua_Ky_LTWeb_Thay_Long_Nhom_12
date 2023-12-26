package Database;

import java.util.List;

import Model.Verification;

public interface IVerificationDAO extends GenericDAO<Verification> {
	int save(Verification verification);

	List<Verification> findById(int id);

	boolean verify(int userId, String token);
}
