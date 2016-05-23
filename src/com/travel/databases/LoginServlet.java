package com.travel.databases;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public LoginServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	private boolean isUserValid(String userName, String password) {
		try {
			Class.forName("org.postgresql.Driver");
			Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
			System.out.println("Opened Database successfully");
			Statement stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from \"Login\" where username='" + userName + "' and password = '" + password + "';");
			int counter = 0;
			while (rs.next()) {
				counter++;
			}

			if (counter > 0) {
				return true;
			}
			return false;

		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		boolean validUser = isUserValid(userName, password);

		if (validUser) {
			request.getSession().setAttribute("username", userName);
			request.getSession().setAttribute("password", password);	
			response.sendRedirect("LoginInvalid.jsp");
		} else {
			response.sendRedirect("LoginInvalid.jsp");
		}

	}

}
