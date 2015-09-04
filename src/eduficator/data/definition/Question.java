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
			String sql = "SELECT body FROM questionbody WHERE id='" + this.questionid +"'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			//valid = rs.next();
			while(rs.next()){
				questionbody = (String)rs.getString("body");
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return questionbody;
	}
	
	public List<Option> getQuestionOptions(){
		List<Option> options = new ArrayList<Option>();
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT optionid FROM questionoptions WHERE questionid='" + this.questionid +"'");
			//valid = rs.next();
			while(rs.next()){
				options.add(new Option(rs.getString("optionid")));
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return options;
	}
}
