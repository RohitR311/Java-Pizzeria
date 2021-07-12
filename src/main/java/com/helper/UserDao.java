package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entities.User;

public class UserDao {

	public User checkUser(String email, String password) throws Exception {
		String url = "jdbc:mysql://localhost:3306/pizzeria_users";
		String user = "root";
		String pass = "RR237600";
		String query = "SELECT * FROM pizzeria_users.user_table where email=? and password=?; ";
		System.out.println("loading class");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("loaded class");
		Connection con = DriverManager.getConnection(url, user, pass);

		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, email);
		st.setString(2, password);
		User a = new User(0, "", "visitor@gmail.com", "Viewer", "1234");

		ResultSet rs = null;
		try {
			rs = st.executeQuery();
			rs.next();
			System.out.println("got user " + rs.getString("firstname"));
			a.setEmailid(email);
			a.setLogin(true);
			a.setUserid(rs.getInt("userid"));
			a.setFirst(rs.getString("firstname"));

			st.close();
			con.close();
			System.out.println("Connection And Statement closed");
			return a;
		} catch (Exception e) {
			System.out.println("Couldn't loggin" + "   " + email);
			st.close();
			con.close();
			System.out.println("Connection And Statement closed");
			return a;

		}

	}

}
