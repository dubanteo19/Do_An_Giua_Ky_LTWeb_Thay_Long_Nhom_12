package Controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Status;
import Model.User;
import Model.Verification;
import Services.IUserService;
import Services.IVerificationService;
import Services.UserServices;
import Services.VerificationService;
import Utils.BHash;
import Utils.TokenGenerator;
import Utils.Validator;
import Utils.sqlDateCreator;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IUserService userService = new UserServices();

	IVerificationService verificationService = new VerificationService();

	public SignUp() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email").toLowerCase();
		String fullName = request.getParameter("lastName").trim()+" "+request.getParameter("firstName").trim();
		String phone = request.getParameter("PhoneNumber");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		User users = null;
		users = userService.findUserByEmail(email);
		String error = "";
		String url = "/Verification.jsp";
		if (!password.equals(confirmPassword)) {
			error = "Xác nhận lại mật khẩu đăng nhập";
		}
		if (!Validator.validateEmail(email)) {
			error = "Email không đúng định dạng";
		}
		if (users != null) {
			error = "Email đã tồn tại trong hệ thống";
		}
		if (error.length() > 0) {
			request.setAttribute("error", error);
			url = "/signup.jsp";
		} else {
			User user = new User();
			user.setEmail(email);
			user.setFullName(fullName);
			user.setPasswordHash(BHash.hashWithSalt(confirmPassword));
			user.setPhone(phone);
			user.setStatus(new Status(2, "chưa kích hoạt email"));
			
			System.out.println(user);
			int userId = userService.signUp(user);
			Verification verification = new Verification();
			verification.setUserId(userId);
			verification.setToken(TokenGenerator.generateNewToken());
			verification.setExpDate(System.currentTimeMillis());
			System.out.println(verification);
			verificationService.save(verification);
			verificationService.sendVerificationEmail(email, verification);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
