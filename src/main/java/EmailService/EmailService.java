package EmailService;

import java.util.Date;
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
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
			message.setSubject(subject, "text/html; charset=UTF-8");
			message.addHeader("Content-type", "text/HTML; charset=UTF-8");
			message.setContent(mess, "text/html; charset=UTF-8");
			message.setSentDate(new Date());
//			message.setReplyTo(InternetAddress.parse(" ", false));
			
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
		emailService.send("21130451@st.hcmuaf.edu.vn", "Hello", "Đây là tiếng việt");
	}

}
