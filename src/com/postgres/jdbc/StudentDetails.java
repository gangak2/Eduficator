package com.postgres.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentDetails {
	
	String userid = null;
	String usertype = null;
	Map<Object,Object> details = new HashMap(); 
	
	public StudentDetails(String usrid, String usrtype){
		this.userid = usrid;
		this.usertype = usrtype;
		fetchDetails();
	}
	
	
	public void fetchDetails(){
		try {
			JDBCConnection database = new JDBCConnection();
			//Fetching the user first name and last name 
			String getdetailsStatement = "SELECT firstname, lastname FROM students WHERE id = "+ this.userid;
			Statement stmtDetails = database.connection.createStatement();
			ResultSet rs = stmtDetails.executeQuery(getdetailsStatement);
			while(rs.next()){
				this.details.put("name", rs.getString("firstname") + " " + rs.getString("lastname"));
				break;
			}
			//Fetching user enrolled courses and corresponding details
			String getEnrolledCourses = "SELECT oc.subject as subject, oc.class as class, oce.proficiency as proficiency FROM openclassroomenrollments AS oce inner join openclassrooms AS oc ON oc.id = oce.classroom WHERE oce.student = " + this.userid;
			Statement stmtEnrolledCourses = database.connection.createStatement();
			ResultSet rocs = stmtDetails.executeQuery(getEnrolledCourses);
			List<EnrolledCourse> openClassroomEnrolledCourses = new ArrayList<EnrolledCourse>();
			while(rocs.next()){
				String cname = rocs.getString("subject");
				String std = rocs.getString("class");
				Double prof = rocs.getDouble("proficiency");
				EnrolledCourse ec = new EnrolledCourse(cname,std,prof);
				openClassroomEnrolledCourses.add(ec);
			}
			this.details.put("openClassroomEnrolledCourses", openClassroomEnrolledCourses);
			//Fetching openclassroom suggestions
			String getAvailabelOpenClassrooms = "SELECT * FROM get_available_openclassrooms( "+ this.userid + ")";
			ResultSet raocs = stmtDetails.executeQuery(getAvailabelOpenClassrooms);
			List<ClassroomCourse> availabelClassroomCourses = new ArrayList<ClassroomCourse>();
			while(raocs.next()){
				String subject = raocs.getString("subject");
				String standard = raocs.getString("standard");
				ClassroomCourse cc = new ClassroomCourse(subject,standard);
				availabelClassroomCourses.add(cc);
			}
			this.details.put("availabelClassroomCourses", availabelClassroomCourses);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
