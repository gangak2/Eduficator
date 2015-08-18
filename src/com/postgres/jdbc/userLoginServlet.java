package com.postgres.jdbc;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Servlet implementation class userLoginServlet
 */
@WebServlet("/userLoginServlet")
public class userLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String)request.getParameter("email");
		String password = (String)request.getParameter("password");
		String usertype = (String)request.getParameter("usertype");
		boolean valid = false;
		try{
			JDBCConnection database = new JDBCConnection();
			Statement stmt = database.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT id FROM "+ usertype +" WHERE email='" + username + "' AND password='" + password + "'");
			//valid = rs.next();
			while(rs.next()){
				valid = true;
				StudentDetails studentDetails = new StudentDetails(rs.getString("id"),"students");
				request.getSession().setAttribute("activeUserDetails", studentDetails.details);
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(valid){
			System.out.println("Authenticated");
			RequestDispatcher rd = request.getRequestDispatcher("StudentProfile.jsp");
			rd.forward(request, response);
		}
		else{
			System.out.println("Could not authenticate");
			response.sendRedirect("index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
