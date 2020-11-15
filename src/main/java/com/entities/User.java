package com.entities;

public class User {
	private int userid;
	private String first;
	private String role;
	private String password;
	private String emailid;
	private boolean login = false;

	public int getUserid() {
		return userid;
	}

	public User(int userid, String first, String emailid, String role, String password) {
		super();
		this.userid = userid;
		this.first = first;
		this.role = role;
		this.password = password;
		this.emailid = emailid;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public boolean isLogin() {
		return login;
	}

	public void setLogin(boolean login) {
		this.login = login;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
