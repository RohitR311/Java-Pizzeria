package com.helper;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.User;

@WebServlet("/getcustomer")
public class GetLogin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		System.out.println("passed user");

		UserDao logged = new UserDao();

		String useremail = request.getParameter("emailid");
		String userpassword = request.getParameter("password");
		User a = new User(0, "Viewer", "visitor@gmail.com", "Viewer", "1234");

		try {
			a = logged.checkUser(useremail, userpassword);
			if (a.isLogin()) {
				System.out.println("logged in");
				u.setFirst(a.getFirst());
				u.setPassword(userpassword);
				u.setRole("Customer1");
				u.setLogin(true);
				u.setEmailid(useremail);
				u.setUserid(a.getUserid());
				System.out.println("login successful");
				session.setAttribute("user", u);
			}
			System.out.println(u.getRole());
			System.out.println(a);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Coudnt loggin 2");
			e.printStackTrace();
		}

		if (a.isLogin()) {
			response.sendRedirect("index.jsp");
		} else {

			response.sendRedirect("register.jsp");
		}

	}

}
