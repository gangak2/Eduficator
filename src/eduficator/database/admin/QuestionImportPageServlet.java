package eduficator.database.admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eduficator.database.common.JDBCConnection;

/**
 * Servlet implementation class QuestionImportPageServlet
 */
@WebServlet("/QuestionImportPageServlet")
public class QuestionImportPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionImportPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			JDBCConnection database = new JDBCConnection();
			Statement stmtTopics = database.getConnection().createStatement();
			ResultSet topics = stmtTopics.executeQuery("SELECT * FROM topics");
			ArrayList<String> topicList = new ArrayList<String>();
			while(topics.next()){
				System.out.println(topics.getString(1));
				topicList.add(topics.getString(1));
			}
			System.out.println(topicList.toString());
			request.setAttribute("topics", topicList);
			RequestDispatcher rd = request.getRequestDispatcher("admin/NewQuestion.jsp");
			rd.forward(request, response);
		}
		catch (SQLException e) {
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
