package com.postgres.jdbc;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class importQuestion
 */
@WebServlet("/importQuestion")
public class importQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public importQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topic = (String)request.getParameter("_topic").replaceAll("\'", "\\\'");
		String subtopics = request.getParameter("_subTopicList");
		String question = (String)request.getParameter("_question").replaceAll("\\'", "\\\\'");
		String questiontags = request.getParameter("_questionTags");
		String options = request.getParameter("_options");
		String procedure = request.getParameter("_procedure");
		String steps = request.getParameter("_steps");
		String formulae = request.getParameter("_formulae");
		try {
			JDBCConnection database = new JDBCConnection();
			Statement stmt = database.connection.createStatement();
			String query = "insert into question (topic, subtopics, questiontext, questiontags, options, processes, steps, formulae) VALUES ('" +
					topic + "','" + subtopics + "','" + question + "','" + questiontags + "','" + options + "','" + procedure + "','" + steps + "','" + formulae + "')";
			System.out.println(query);
			stmt.executeUpdate(query);
			response.setContentType("text/plain");  
			response.setCharacterEncoding("UTF-8"); 
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
