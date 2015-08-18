package com.postgres.jdbc;

public class ActiveUser {

	String userid = null;
	String usertype = null;
	
	public ActiveUser(){
		
	}
	
	public ActiveUser(String usrid, String usrtype){
		this.userid = usrid;
		this.usertype = usrtype;
	}
	
	public void setUserId(String usrid){
		this.userid = usrid;
	}
	
	public void setUserType(String usrtype){
		this.usertype = usrtype;
	}
}
