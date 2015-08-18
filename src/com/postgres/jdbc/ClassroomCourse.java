package com.postgres.jdbc;

public class ClassroomCourse {
	String subject = null;
	String standard = null;
	
	public ClassroomCourse(String sub, String std){
		this.subject = sub;
		this.standard = std;
	}
	
	public String writeToHTML(){
		String html = "<tr>\n";
		html += "<td><a href=\"courseIntroduction.jsp?course="+this.subject+"&standard="+this.standard+"\" style=\"font-size: 25px;\">"+this.subject+" for "+this.standard+"</a></td>\n";
		html += "</tr>\n";
		return html;
	}
}
