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
			ResultSet rs = stmt.executeQuery("SELECT topic FROM topicbody WHERE id='" + this.topicId + "'");
			//valid = rs.next();
			while(rs.next()){
				topicName = (String)rs.getString("topic");
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
			ResultSet rs = stmt.executeQuery("SELECT cb.id AS id FROM coursebody cb INNER JOIN topiccourse tc ON cb.id = tc.courseid WHERE tc.topicid='" + this.topicId + "'");
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
			String sql = "SELECT q.id AS questionid FROM questionbody AS q INNER JOIN questiontopic qt ON q.id = qt.questionid WHERE qt.topicid='" + this.topicId +"' ORDER BY q.difficulty LIMIT 20";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
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
