package Services;

import java.util.List;
import java.util.Random;

import javax.inject.Inject;

import Database.IVerificationDAO;
import Database.VerificationDAO;
import EmailService.EmailService;
import EmailService.IEmailService;
import Model.Verification;
import Utils.TokenGenerator;

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
		String body = "<div style=\"font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;\">\r\n" +
		            "        <h2>Xác thực mã OTP</h2>\r\n" +
		            "        <p>Chào bạn,</p>\r\n" +
		            "        <p>Đây là mã OTP (One-Time Password) của bạn để xác thực tài khoản:</p>\r\n" +
		            "        <p style=\"font-size: 24px; font-weight: bold;\">Mã OTP của bạn là: " + verification.getToken() + "</p>\r\n" +
		            "        <p>Vui lòng không chia sẻ mã này với bất kỳ ai khác. Hãy sử dụng mã này ngay để hoàn thành quá trình xác thực.</p>\r\n" +
		            "        <p>Trân trọng,<br> Website Lương Thực Việt</p>\r\n" +
		            "    </div>";
		String subject = "Kích hoạt tài khoản LTV";
		return emailService.send(to, subject, body);

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
