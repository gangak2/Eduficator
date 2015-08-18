package com.postgres.jdbc;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/registrationServlet")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public JDBCConnection database = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String form = (String)request.getParameter("form");
		if(form.equals("student")){
			String firstname = (String)request.getParameter("firstname");
			String lastname = (String)request.getParameter("lastname");
			String email = (String)request.getParameter("email");
			String password = (String)request.getParameter("password");
			try {
				database = new JDBCConnection();
				Statement stmt = database.connection.createStatement();
				String insertStatement = "insert into students (firstname, lastname, email, password) VALUES ('" + firstname + "','" + lastname + "','" + email + "','" + password + "')";
				stmt.executeUpdate(insertStatement);
				response.sendRedirect("index.jsp");
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
