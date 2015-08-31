package eduficator.data.definition;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import eduficator.database.common.JDBCConnection;

public class Question {
	public String questionid = null;
	public List<SolutionStep> steps = new ArrayList<SolutionStep>();
	
	public Question(){
	}
	
	public Question(String id){
		this.questionid = id;
	}
	
	public String getQuestionBody(){
		String questionbody = null;
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT questionbody FROM questions WHERE questionid='" + this.questionid +"'");
			//valid = rs.next();
			while(rs.next()){
				questionbody = (String)rs.getString("questionbody");
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return questionbody;
	}
	
	public List<String> getQuestionOptions(){
		List<String> options = new ArrayList<String>();
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT optiona,optionb,optionc,optiond FROM questions WHERE questionid='" + this.questionid +"'");
			//valid = rs.next();
			while(rs.next()){
				options.add((String)rs.getString("optiona"));
				options.add((String)rs.getString("optionb"));
				options.add((String)rs.getString("optionc"));
				options.add((String)rs.getString("optiond"));
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return options;
	}
}
