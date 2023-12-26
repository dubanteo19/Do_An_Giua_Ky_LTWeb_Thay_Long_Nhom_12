package Utils;

import java.util.regex.Pattern;

public class Validator {
	public static boolean patternMachees(String input, String regexPattern) {
		Pattern pattern = Pattern.compile(regexPattern);
		return pattern.matcher(input).matches();
	}

	public static boolean validateEmail(String email) {
		String regexPattern = "^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@"
				+ "[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";
		return patternMachees(email, regexPattern);
	}
}
