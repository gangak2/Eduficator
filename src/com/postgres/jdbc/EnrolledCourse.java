package com.postgres.jdbc;

public class EnrolledCourse {
	String coursename = null;
	String standard = null;
	Double proficiency = null;
	
	public EnrolledCourse(String cname, String std, Double prof){
		this.coursename = cname;
		this.standard = std;
		this.proficiency = prof;
	}
	
	public String writeIntoHTML(){
		String html = "<div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\">\n";
		html += "<div class=\"info-box dark-bg\" align=\"center\" style=\"margin:0 auto;\">\n";
		html +=	"<i class=\"fa fa-star-o\"></i>\n";
		html += "<div class=\"title\"><a href=\"CoursePage.jsp\">"+ this.coursename +"</a></div>\n";	
		html += "<div class=\"count\">"+ this.proficiency +"%</div></div></div>\n";
		return html;
	}
}
