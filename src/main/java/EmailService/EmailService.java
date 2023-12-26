package EmailService;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailService implements IEmailService {

	public Session getSesstion(Properties props) {
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(MailProperty.APP_EMAIL, MailProperty.APP_PASSWORD);
			}
		});
		return session;
	}

	@Override
	public boolean send(String to, String subject, String mess) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", MailProperty.HOST_NAME);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.port", MailProperty.TSL_PORT);
		Session session = getSesstion(props);
		MimeMessage message = new MimeMessage(session);
		try {
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.addHeader("Content-type", "text/HTML; charset=UTF-8");
			message.setContent(mess, "text/html");
			Transport.send(message);
			return true;
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public static void main(String[] args) {
		EmailService emailService = new EmailService();
		emailService.send("sansan25032003@gmail.com", "Hello", "<a href='https://www.google.com/?hl=vi'>Click me</a>");
	}

}
