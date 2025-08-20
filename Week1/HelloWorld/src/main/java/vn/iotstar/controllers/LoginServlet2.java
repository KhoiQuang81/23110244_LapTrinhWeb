package vn.iotstar.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/login2" })
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		if (username.equals("trungnh") && password.equals("123")) {
			out.print("Chào mừng bạn, " + username);
			HttpSession session = req.getSession();
			session.setAttribute("name", username);
		} else {
			out.print("Tài khoản hoặc mật khẩu không chính xác");
			req.getRequestDispatcher("Login.html").include(req, resp);
		}
	}
}
