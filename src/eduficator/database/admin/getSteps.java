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
		
		try {
			JDBCConnection database = new JDBCConnection();
			Statement stmt = database.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM steps WHERE topic='" + topic + "'");
			String stepsList = "";
			while(rs.next()){
				stepsList += rs.getString("step") + "#";
			}
			if(stepsList.endsWith("#")){
				stepsList = stepsList.substring(0, stepsList.length()-1);
			}
			System.out.println("The steps list retireved is " +  stepsList);
			response.setContentType("text/plain");  
			response.setCharacterEncoding("UTF-8"); 
			response.getWriter().write(stepsList);
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
