package Controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CartItem;
import Model.ShopingCart;
import Services.IProductService;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ShopingCart shopingCart;
	@Inject
	private IProductService productService;
	String url = "";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		shopingCart = (ShopingCart) session.getAttribute("cart");
		if (shopingCart == null) {
			shopingCart = new ShopingCart();
		}
		session.setAttribute("cart", shopingCart);
//		request.getRequestDispatcher(url).forward(request, response);
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		switch (action) {
		case "put":
			doPut(request, response);
			break;
		case "delete":
			doDelete(request, response);
			break;
		case "get":
			url="/CartDetail.jsp";
			session.setAttribute("cart", shopingCart);
			response.sendRedirect("CartDetail.jsp");
			break;
		case "post":
			url="ProductList";
			int id = Integer.valueOf(request.getParameter("id"));
			CartItem cartItem = new CartItem(productService.findProductById(id), 1);
			shopingCart.add(id, cartItem);
			session.setAttribute("cart", shopingCart);
			response.sendRedirect("ProductList");
		default:

			break;
		}

	}

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.valueOf(req.getParameter("id"));
		HttpSession session = req.getSession();
		shopingCart.delete(id);
		url = "/CartDetail.jsp";
		session.setAttribute("cart", shopingCart);
		req.getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		int quanlity = req.getParameter("quanlity") == null ? 0 : Integer.valueOf(req.getParameter("quanlity"));
		int id = Integer.valueOf(req.getParameter("id"));
		String error = "";
		if (quanlity > 0) {
			shopingCart.update(id, quanlity);
		} else {
			error = "Số lượng không hợp lệ";
		}
		url = "/CartDetail.jsp";
		session.setAttribute("cart", shopingCart);
		req.getRequestDispatcher(url).forward(req, resp);
	}
}