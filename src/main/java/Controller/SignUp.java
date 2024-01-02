package Controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import EmailService.IEmailService;
import Model.Status;
import Model.User;
import Model.Verification;
import Services.IUserService;
import Services.IVerificationService;
import Services.UserServices;
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
	@Inject
	IUserService userService;
	@Inject
	IVerificationService verificationService;

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
		String fullName = request.getParameter("fullName");
		String phone = request.getParameter("PhoneNumber");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String error = "";
		String url = "/Verification.jsp";
		if (!password.equals(confirmPassword)) {
			error = "Xác nhận lại mật khẩu đăng nhập";
		}
		if (!Validator.validateEmail(email)) {
			error = "Email không đúng định dạng";
		}
		if (userService.findUserByEmail(email) != null) {
			error = "Email đã tồn tại trong hệ thống";
		}
		if (error.length() > 0) {
			request.setAttribute("error", error);
			url = "/SignUp.jsp";
		} else {
			User user = new User(email, fullName, new Status(2, "Chưa kích hoạt"), BHash.hashWithSalt(password));
			userService.signUp(user);
			Verification verification = new Verification(userService.findUserByEmail(email).getId(),
					TokenGenerator.generateNewToken(), sqlDateCreator.getTime());
			verificationService.save(verification);
			verificationService.sendVerificationEmail(email,verification);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
