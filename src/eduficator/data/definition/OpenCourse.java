package eduficator.data.definition;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.postgres.jdbc.StudentDetails;

import eduficator.database.common.JDBCConnection;

public class OpenCourse {
	public String courseId = null;
	
	public OpenCourse(){
	}

	public OpenCourse(String id){
		this.courseId = id;
	}
	
	public String getCourseName(){
		String courseName = null;
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT subject FROM coursebody WHERE id='" + this.courseId +"'");
			
			//valid = rs.next();
			while(rs.next()){
				courseName = (String)rs.getString("subject");
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return courseName;
	}
	
	public List<Topic> getAllTopics(){
		List<Topic> topics = new ArrayList<Topic>();
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			String sql = "SELECT topicid FROM topiccourse WHERE courseid='" + this.courseId + "'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			//valid = rs.next();
			while(rs.next()){
				topics.add(new Topic((String)rs.getString("topicid")));
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return topics;
	}
}
