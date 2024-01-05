package Controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.IVerificationService;
import Services.VerificationService;

/**
 * Servlet implementation class Verifier
 */
@WebServlet("/Verifier")
public class Verifier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IVerificationService verificationService = new VerificationService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Verifier() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		int userId = 0;
		try {
			userId = Integer.valueOf(request.getParameter("userId"));
		}
		catch (NumberFormatException e) {
			e.printStackTrace();
		}
		String token = request.getParameter("otp");
		request.setAttribute("userId", userId);
		String url = "/Verification.jsp";
		if (verificationService.verify(userId, token)) {
			request.setAttribute("re", "Chúc mừng bạn đã xác thực thành công. Vui lòng đăng nhập!");
			url = "login.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
