package eduficator.database.common;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import eduficator.data.definition.*;
import eduficator.database.common.JDBCConnection;

public class DBQueries {

	public DBQueries(){
		
	}
	
	public List<OpenCourse> getAllCourses(){
		List<OpenCourse> courses = new ArrayList<OpenCourse>();
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT id FROM openclassrooms");
			//valid = rs.next();
			while(rs.next()){
				courses.add(new OpenCourse((String)rs.getString("id")));
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return courses;
	}
	
}
