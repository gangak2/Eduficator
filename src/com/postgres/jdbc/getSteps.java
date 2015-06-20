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
 * Servlet implementation class getSteps
 */
@WebServlet("/getSteps")
public class getSteps extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getSteps() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topic = request.getParameter("topic");
		String subtopic = request.getParameter("subtopic");
		
		try {
			JDBCConnection database = new JDBCConnection();
			Statement stmt = database.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM steps WHERE topic='" + topic + "' AND subtopic='" + subtopic + "'");
			String subtopicList = "";
			while(rs.next()){
				subtopicList += rs.getString(3) + "#";
			}
			if(subtopicList.endsWith("#")){
				subtopicList = subtopicList.substring(0, subtopicList.length()-1);
			}
			System.out.println(subtopicList);
			response.setContentType("text/plain");  
			response.setCharacterEncoding("UTF-8"); 
			response.getWriter().write(subtopicList);
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
