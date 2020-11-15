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
		int a = 0;

		try {
			a = logged.checkUser(useremail, userpassword);
			if (a != 0) {
				System.out.println("logged in");
				u.setFirst(request.getParameter("firstname"));
				u.setPassword(userpassword);
				u.setRole("Customer1");
				u.setEmailid(useremail);
				u.setUserid(a);
				System.out.println("login successful");
				session.setAttribute("user", u);
			}
			System.out.println(u.getRole());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Coudnt loggin 2");
			e.printStackTrace();
		}

		if (a != 0) {
			response.sendRedirect("index.jsp");
		} else {

			response.sendRedirect("register.jsp");
		}

	}

}
