package com.helper;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.User;

@WebServlet("/loginchecker")
public class LoginChecker extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		System.out.println("passed user");

		if (u.isLogin()) {
			u.setFirst("Viewer");
			u.setLogin(false);
			u.setUserid(0);
			u.setEmailid("visitor@gmail.com");
			u.setRole("Viewer");
			session.setAttribute("user", u);
			response.sendRedirect("index.jsp");
			System.out.println("redirected to home");

		} else {
			System.out.println("redirecting to login");
			response.sendRedirect("login.jsp");
		}
	}

}
