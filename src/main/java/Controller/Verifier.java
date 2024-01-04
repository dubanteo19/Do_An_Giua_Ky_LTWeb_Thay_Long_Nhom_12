package Controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.IVerificationService;

/**
 * Servlet implementation class Verifier
 */
@WebServlet("/Verifier")
public class Verifier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	IVerificationService verificationService;

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
		int userId = Integer.valueOf(request.getParameter("userId"));
		String token = request.getParameter("token");
		String url = "/Verification.jsp";
		if (verificationService.verify(userId, token)) {
			request.setAttribute("re", "Chúc mừng bạn đã xác thực thành công. Vui lòng đăng nhập!");
			url = "/Login.jsp";
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
