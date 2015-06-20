package com.postgres.jdbc;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		
		try {
			JDBCConnection database = new JDBCConnection();
			Statement stmt = database.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'");
			if(rs.next()){
				System.out.println(rs.getString("username") + " " + rs.getString("password"));
				request.getSession().setAttribute("user", username);
				Statement stmtTopics = database.connection.createStatement();
				ResultSet topics = stmtTopics.executeQuery("SELECT * FROM topics");
				ArrayList<String> topicList = new ArrayList<String>();
				while(topics.next()){
					System.out.println(topics.getString(1));
					topicList.add(topics.getString(1));
				}
				System.out.println(topicList.toString());
				request.setAttribute("topics", topicList);
				RequestDispatcher rd = request.getRequestDispatcher("QuestionDigestor.jsp");
				rd.forward(request, response);
			}
			else{
				response.sendRedirect("index.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
