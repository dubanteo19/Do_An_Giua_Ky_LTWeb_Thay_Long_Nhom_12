package Services;

import java.util.List;

import javax.inject.Inject;

import Database.IVerificationDAO;
import EmailService.IEmailService;
import Model.Verification;

public class VerificationService implements IVerificationService {
	@Inject
	private IVerificationDAO verificationDAO;
	@Inject
	private IUserService userService;
	@Inject
	private IEmailService emailService;

	@Override
	public List<Verification> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int save(Verification t) {
		return verificationDAO.save(t);
	}

	@Override
	public boolean update(Verification t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean sendVerificationEzĂ­ch hoáº¡t tĂ i khoáº£n LTV";
		return emailService.send(to, subject, url);

	}

	@Override
	public boolean verify(int userId, String token) {
		if (verificationDAO.verify(userId, token)) {
			return userService.verify(userId);
		}
		return false;
	}

	@Override
	public Verification findById(int id) {
		return verificationDAO.findById(id).get(0) == null ? null : verificationDAO.findById(id).get(0);
	}

}
