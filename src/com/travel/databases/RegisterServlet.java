package com.travel.databases;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	private boolean termsCheck(String termsAgree) {
		return true;
	}

	private boolean isUserExists(String userName) {
		try {
			int counter = 0;
			Class.forName("org.postgresql.Driver");
			Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
			System.out.println("Opened Database successfully");
			Statement stmt = c.createStatement();
			String query = "select * from postgres.\"Login\" where username='" + userName + "'";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				counter++;
			}
			if (counter == 0) {
				return false;
			}
			return true;

		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	private boolean createNewUser(String email, String userName, String password) {

		try {
			Class.forName("org.postgresql.Driver");
			Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
			System.out.println("Opened Database successfully");
			Statement stmt = c.createStatement();
			StringBuilder queryString = new StringBuilder("insert into \"Login\" (username,password,email) values ('"
					+ userName + "','" + password + "','" + email + "')");
			System.out.println("Query String: " + queryString);

			int result = stmt.executeUpdate(queryString.toString());
			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String termsAgree = request.getParameter("terms");
		System.out.println("*** In Register Servlet. Terms: " + termsAgree);

		PrintWriter out = response.getWriter();
		if (termsCheck(termsAgree)) {
			if (!isUserExists(userName)) {
				if (password.equals(confirmPassword)) {
					boolean success = createNewUser(email, userName, password);
					if (success) {
						request.getSession().setAttribute("username", userName);
					   request.getSession().setAttribute("password", password);
						request.getSession().removeAttribute("reg_error");
						
						response.sendRedirect("Home.jsp");
					} else {
						request.getSession().setAttribute("reg_error", "0");
						response.sendRedirect("Register.jsp");
						//out.println("<html> <body> Something went wrong while creating a user </body></html>");
					}
				} else {
					request.getSession().setAttribute("reg_error", "1");
					response.sendRedirect("RegisterPassword.jsp");
					//out.println("<html> <body> Password Mismatch </body></html>");
				}
			} else {
				request.getSession().setAttribute("reg_error", "2");
				response.sendRedirect("Registerexist.jsp");
			}
		}else {
			request.getSession().setAttribute("reg_error", "3");
			response.sendRedirect("Registerexist.jsp");
		}
	}

}
