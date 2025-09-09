package vn.iotstar.controllers;

import java.io.IOException;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import jakarta.servlet.http.HttpSession;
//import vn.iotstar.models.UserModel;
//import vn.iotstar.services.UserService;
//import vn.iotstar.services.impl.UserServiceImpl;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private final UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String msg = req.getParameter("msg");
		if ("logout_success".equals(msg)) {
			req.setAttribute("alert", "Bạn đã đăng xuất thành công");
		} else if ("reset_success".equals(msg)) {
			req.setAttribute("alert", "Đặt lại mật khẩu thành công. Vui lòng đăng nhập lại");
		}
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
//		
		if (username != null && !username.isEmpty() && password != null && !password.isEmpty()) {
	        // set alert
	        req.setAttribute("alert", "Đăng nhập thành công!");
	        // forward về index.jsp để hiển thị thông báo
	        req.getRequestDispatcher("/index.jsp").forward(req, resp);
	    } else {
	        req.setAttribute("alert", "Vui lòng nhập tên đăng nhập và mật khẩu!");
	        req.getRequestDispatcher("/index.jsp").forward(req, resp);
	    }
		// debug tạm
//        System.out.println("[LOGIN] username=" + username + ", password=" + password);
        
//		UserModel u = userService.authenticate(username, password);
//		if (u != null) {
//			HttpSession session = req.getSession();
//			session.setAttribute("currentUser", u.getUsername());
//			resp.sendRedirect(req.getContextPath() + "/admin/category/list");
//		} else {
//			req.setAttribute("alert", "Sai tên đăng nhập hoặc mật khẩu!");
//			req.getRequestDispatcher("/index.jsp").forward(req, resp);
//		}
	}
}
