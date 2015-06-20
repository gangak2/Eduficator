package com.postgres.jdbc;

import org.postgresql.Driver;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class JDBCConnection {

	Connection connection = null;
	static final String JDBC_DRIVER = "org.postgresql.Driver";
	
	public JDBCConnection() throws SQLException, ClassNotFoundException{
		Class.forName("org.postgresql.Driver");
		connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Questions", "postgres", "root");
	}
	
	
}
