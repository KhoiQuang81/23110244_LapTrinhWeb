package vn.iotstar.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/profile2" })

public class Profile extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        HttpSession session = req.getSession(false); // lấy session nếu có
        if(session!=null){
        	String name=(String)session.getAttribute("name");
        	out.print("Chào bạn, "+name+" đến với trang quản lý tài khoản");
        	}
        	else {
        	out.print("Xin vui lòng đăng nhập");
        	resp.sendRedirect(req.getContextPath() + "/Login.html");
        	}

        }
}
