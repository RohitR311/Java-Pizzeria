package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

	public int checkUser(String email, String password) throws Exception {
		String url = "jdbc:mysql://localhost:3306/pizzeria_users";
		String user = "root";
		String pass = "RR237600";
		String query = "SELECT * FROM  pizzeria_users.user_table where email=? and password=?; ";
		System.out.println("loading class");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("loaded class");
		Connection con = DriverManager.getConnection(url, user, pass);

		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, email);
		st.setString(2, password);

		ResultSet rs = null;
		try {
			rs = st.executeQuery();
			rs.next();
			System.out.println("got user " + rs.getString("firstname"));
			int a = rs.getInt("userid");
			st.close();
			con.close();
			System.out.println("Connection And Statement closed");
			return a;
		} catch (Exception e) {
			System.out.println("Coudnt loggin" + "   " + email);
			st.close();
			con.close();
			System.out.println("Connection And Statement closed");
			return 0;

		}

		/*
		 * while(rs.next()) {
		 * if((checkid.equals(rs.getString("customer_email")))&&(checkpass.equals(rs.
		 * getString("customer_pass")))) { System.out.println("checked user"); try {
		 * System.out.println(rs.getString("customer_email")+"  "+rs.getString(
		 * "customer_pass")); }catch(Exception e){ System.out.println("error"); }
		 * 
		 * st.close(); con.close();
		 * System.out.println("Connection And Statement closed"); return true; } else {
		 * System.out.println("checking user");
		 * System.out.println(rs.getString("customer_email")+"  "+rs.getString(
		 * "customer_pass")); System.out.println(checkid+"  "+checkpass); }
		 * 
		 * }
		 */
		/*
		 * System.out.println("Coudnt loggin"); st.close(); con.close();
		 * System.out.println("Connection And Statement closed"); return false;
		 */
	}

}
