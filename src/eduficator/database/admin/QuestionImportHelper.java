package eduficator.database.admin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import eduficator.database.common.JDBCConnection;

public class QuestionImportHelper {

	public JDBCConnection database = null;
	
	public QuestionImportHelper() throws ClassNotFoundException, SQLException{
		database = new JDBCConnection();
	}
	
	public ArrayList<String> getTopics() throws SQLException{
		Statement stmt = database.getConnection().createStatement();
		ResultSet topics = stmt.executeQuery("SELECT * FROM topics");
		ArrayList<String> topicList = new ArrayList<String>();
		while(topics.next()){
			topicList.add(topics.getString(1));
		}
		return topicList;
	}
	
	public ArrayList<String> getSubTopics(String topic) throws SQLException{
		Statement stmt = database.getConnection().createStatement();
		ResultSet topics = stmt.executeQuery("SELECT * FROM subtopics WHERE Topic='" + topic + "'");
		ArrayList<String> topicList = new ArrayList<String>();
		while(topics.next()){
			topicList.add(topics.getString("SubTopic"));
		}
		return topicList;
	}
}
