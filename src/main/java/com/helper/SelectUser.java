package com.helper;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.User;

/*import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/

/**
 * Servlet implementation class SetUser
 */
@WebServlet("/setcustomer")
public class SelectUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String emailid = request.getParameter("emailid");
		String userpassword = request.getParameter("password");

		AddCust ac = new AddCust();
		try {
			int a = ac.addNew(firstname, lastname, emailid, userpassword);
			HttpSession session = request.getSession();
			User u = (User) session.getAttribute("user");
			u.setFirst(request.getParameter("firstname"));
			u.setPassword(userpassword);
			u.setRole("Customer1");
			u.setEmailid(emailid);
			u.setUserid(a);
			u.setLogin(true);
			session.setAttribute("user", u);
		} catch (Exception e) { // TODO Auto-generated catch block
			System.out.println("Coudnt execute query 2");
			e.printStackTrace();
		}

		response.sendRedirect("index.jsp");
	}

}
