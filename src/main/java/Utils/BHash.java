package Utils;

import org.mindrot.jbcrypt.BCrypt;

public class BHash {
	public static String hashWithSalt(String password) {
		return BCrypt.hashpw(password, BCrypt.gensalt(4));
	}

	public static boolean login(String password, String hash) {
		return BCrypt.checkpw(password, hash);
	}

	public static void main(String[] args) {
		System.out.println(hashWithSalt("123"));
	}
}
