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
		String passs = "123";
		String salt = BCrypt.gensalt(4);
		System.out.println(salt);
		System.out.println(BCrypt.hashpw(passs, salt));
		System.out.println(BCrypt.checkpw("1234", "$2a$04$BuxH5zMK1/k.Wa5FI3YYJ.EAzTFdq0vVSoGWDEhppEAr6HuVyyGdK"));
		String hash = "$2a$04$O2WDxdlzVN/bZuDsY.NmHeU3afUC9Twe3k7zO207JsaNf5osS/fmS";
//		System.out.println(login("123", hash));
	}
}
