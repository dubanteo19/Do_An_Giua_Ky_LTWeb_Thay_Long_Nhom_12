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
		long expDate = 0;
		try {
			userId = Integer.valueOf(request.getParameter("userId"));
			expDate = Long.valueOf(request.getParameter("expDate"));
		}
		catch (NumberFormatException e) {
			e.printStackTrace();
		}
		String token = request.getParameter("otp");
		request.setAttribute("userId", userId);
		String url = "/Verification.jsp";
		long currentTimeMillis = System.currentTimeMillis();
		System.out.println(expDate);
		if((currentTimeMillis - expDate) < 60000) {
			if(token == null || token.isEmpty()) {
				// Nếu không có mã OTP hoặc mã OTP trống, yêu cầu gửi lại mã xác nhận
	            request.setAttribute("re", "Mã OTP đã hết hạn hoặc không hợp lệ. Vui lòng gửi lại mã xác nhận!");
			}
			else { 
				if (verificationService.verify(userId, token)) {
				request.setAttribute("re", "Chúc mừng bạn đã xác thực thành công. Vui lòng đăng nhập!");
				url = "login.jsp";
				}
				else {
	                request.setAttribute("re", "Mã OTP không hợp lệ. Vui lòng nhập lại mã xác nhận!");
	            }
			}
		}
		else {
	        // Nếu hết hạn 1 phút mà không nhập mã, yêu cầu gửi lại mã xác nhận
	        request.setAttribute("re", "Đã hết thời gian nhập mã OTP. Vui lòng gửi lại mã xác nhận!");
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
