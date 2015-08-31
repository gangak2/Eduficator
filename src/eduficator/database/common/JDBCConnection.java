package eduficator.database.common;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class JDBCConnection {

	public static Connection connection = null;
	static final String JDBC_DRIVER = "org.postgresql.Driver";
	
	public JDBCConnection() throws SQLException, ClassNotFoundException{
		Class.forName("org.postgresql.Driver");
		setConnection(DriverManager.getConnection("jdbc:postgresql://localhost:5432/Questions", "postgres", "root"));
	}

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		JDBCConnection.connection = connection;
	}
	
	
}
