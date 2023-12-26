package Services;

import Model.Verification;

public interface IVerificationService extends IGenericService<Verification> {
	boolean verify(int userId, String token);
	Verification findById(int id);
	boolean sendVerificationEmail(String email, Verification verification);
}
