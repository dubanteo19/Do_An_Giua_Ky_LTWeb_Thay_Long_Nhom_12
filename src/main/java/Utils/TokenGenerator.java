package Utils;

import java.security.SecureRandom;
import java.util.Base64;

public class TokenGenerator {
	private static final SecureRandom secureRandom = new SecureRandom(); // threadsafe
	private static final Base64.Encoder base64Encoder = Base64.getUrlEncoder(); // threadsafe

	public static String generateNewToken() {
		return String.format("%06d", secureRandom.nextInt(0, 999999));
	}
}
