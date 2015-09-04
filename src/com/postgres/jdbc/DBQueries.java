package com.postgres.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import eduficator.data.definition.*;
import eduficator.database.common.JDBCConnection;

public class DBQueries {

	public DBQueries(){
		
	}
	
	public static List<OpenCourse> getAllCourses(){
		List<OpenCourse> courses = new ArrayList<OpenCourse>();
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT id FROM coursebody");
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
