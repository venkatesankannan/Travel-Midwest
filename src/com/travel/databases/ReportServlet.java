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

public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReportServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	private boolean createNewReport(String add, String hour, String minute, String time, String description) {

		try {
			if(description.equals("") || add.equals("") || hour.equals("") || minute.equals("") || time.equals("")||(!add.contains("IL")))
			{
				System.out.println("***********");
				return false;
			}
			Class.forName("org.postgresql.Driver");
			Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
			System.out.println("Opened Database successfully");
			Statement stmt = c.createStatement();
			StringBuilder queryString = new StringBuilder("insert into \"Report\" (add,hour,minute,time,description) values ('"
					+ add + "','" + hour + "','" + minute + "','" + time + "','" + description + "')");
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
		String add = request.getParameter("add");
		String hour = request.getParameter("hour");
		String minute = request.getParameter("minute");
		String time = request.getParameter("time");
		String description = request.getParameter("description");
		
		System.out.println("*** In Report Servlet. Terms: " + description);

		PrintWriter out = response.getWriter();
					boolean success = createNewReport(add, hour, minute, time, description);
					if (success) {
						request.getSession().removeAttribute("reg_error");
						response.sendRedirect("/UIDDemo/ReportIncident1.jsp");
					} else {
						request.getSession().setAttribute("reg_error", "0");
						response.sendRedirect("/UIDDemo/ReportIncident2.jsp");
					}
				} 
			
	
	}

