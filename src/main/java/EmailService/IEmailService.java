package EmailService;

public interface IEmailService {
	boolean send(String to,String subject,String mess);
}
