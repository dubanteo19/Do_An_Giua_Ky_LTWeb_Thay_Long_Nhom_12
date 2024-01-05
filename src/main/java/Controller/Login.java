package Controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.User;
import Services.IUserService;
import Services.UserServices;
import Utils.BHash;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IUserService userService = new UserServices();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String error = "";
		User user = null;
		user = userService.findUserByEmail(email);
		String url = "/login.jsp";
		HttpSession session = request.getSession();
		if (user != null) {
			if (BHash.login(password, user.getPasswordHash())) {
				if (user.getStatus().getId() == 1) {
					url = "/index.jsp";
					session.setAttribute("user", user);
				} else {
					request.setAttribute("email", email);
					String href = "'http://localhost:8080/Do_An_Giua_Ky_LTWeb_Thay_Long_Nhom_12/Verification.jsp?userId=" + user.getId()+ "'";
					error = "Email chưa kích hoạt. Vui lòng bấm vào <a href=" + href + ">đây</a> để kích hoạt!";
				}
			} else {
				request.setAttribute("email", email);
				error = "Sai mật khẩu";
			}
		} else {
			error = "Email chưa đăng kí. Vui lòng đăng kí email!";
		}
		request.setAttribute("error", error);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
