package Services;

import java.util.List;

import javax.inject.Inject;

import Database.IVerificationDAO;
import Database.VerificationDAO;
import EmailService.EmailService;
import EmailService.IEmailService;
import Model.Verification;

public class VerificationService implements IVerificationService {
	private IVerificationDAO verificationDAO = new VerificationDAO();
	private IUserService userService = new UserServices();
	private IEmailService emailService =  new EmailService();

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
	public boolean sendVerificationEmail(String to, Verification verification) {
		String href = "'http://localhost:8080/HocSQL/Verifier?userId=" + verification.getUserId() + "&token="
				+ verification.getToken() + "'";
		String url = "<a href=" + href + ">Kich Hoat</a>";
		System.out.println(url);
		String subject = "Kích hoạt tài khoản LTV";
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
