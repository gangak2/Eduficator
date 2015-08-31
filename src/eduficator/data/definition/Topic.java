package eduficator.data.definition;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import eduficator.database.common.JDBCConnection;

public class Topic {
	public String topicId = null;
	
	public Topic(){
	}

	public Topic(String id){
		this.topicId = id;
	}
	
	public String getTopicName(){
		String topicName = null;
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT topics FROM topics WHERE id=" + this.topicId);
			//valid = rs.next();
			while(rs.next()){
				topicName = (String)rs.getString("topics");
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return topicName;
	}
	
	public OpenCourse getParentCourse(){
		OpenCourse course = null;
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT oc.id AS id FROM openclassrooms oc INNER JOIN topics t ON oc.id = t.subjectid WHERE t.id=" + this.topicId);
			//valid = rs.next();
			while(rs.next()){
				course = new OpenCourse((String)rs.getString("id"));
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return course;
	}
	public int getNumberOfQuestions(){
		int questions = 0;
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT count(*) as ques FROM questions WHERE topic='" + this.topicId +"'");
			//valid = rs.next();
			while(rs.next()){
				questions = (int)rs.getInt("ques");
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return questions;
	}
	
	public List<Question> getAllQuestions(){
		List<Question> questions = new ArrayList<Question>();
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT questionid FROM questions WHERE topic='" + this.topicId +"' ORDER BY difficulty LIMIT 20");
			//valid = rs.next();
			while(rs.next()){
				questions.add(new Question((String)rs.getString("questionid")));
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return questions;
	}
}
