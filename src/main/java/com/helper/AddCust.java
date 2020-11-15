package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddCust {

	public int addNew(String f, String l, String em, String p) throws Exception {
		String url = "jdbc:mysql://localhost:3306/pizzeria_users";
		String user = "root";
		String pass = "RR237600";
		// String fname = f;
		String query = "INSERT INTO pizzeria_users.user_table (firstname,lastname,email,password) VALUE (?,?,?,?);";
		System.out.println("loading class");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("loaded class");
		Connection con = DriverManager.getConnection(url, user, pass);

		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, f);
		st.setString(2, l);
		st.setString(3, em);
		st.setString(4, p);
		System.out.println("statement created");

		try {
			st.execute();
			ResultSet rs = st.getResultSet();
			st = con.prepareStatement("SELECT userid FROM pizzeria_users.user_table where email=? and password=?;");
			st.setString(1, em);
			st.setString(2, p);
			rs = st.executeQuery();
			rs.next();
			int a = rs.getInt("userid");
			st.close();
			con.close();

			System.out.println("Connection And Statement closed");
			return a;
		} catch (Exception e) {
			System.out.println("Coudnt execute query = " + query);
		}

		st.close();
		con.close();

		System.out.println("Connection And Statement closed");

		return 0;
	}

}
