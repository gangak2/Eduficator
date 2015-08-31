package eduficator.database.admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eduficator.database.common.JDBCConnection;

/**
 * Servlet implementation class getSubTopics
 */
@WebServlet("/getSubTopics")
public class getSubTopics extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getSubTopics() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topic = request.getParameter("topic");
		
		try {
			JDBCConnection database = new JDBCConnection();
			Statement stmt = database.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM subtopics WHERE topic='" + topic + "'");
			String subtopicList = "";
			while(rs.next()){
				subtopicList += rs.getString("SubTopic") + "#";
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
