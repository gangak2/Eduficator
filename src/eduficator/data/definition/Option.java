package eduficator.data.definition;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import eduficator.database.common.JDBCConnection;

public class Option {
	public String optionid = null;
	
	public Option(){
	}
	
	public Option(String id){
		this.optionid = id;
	}
	
	public String getOptionBody(){
		String optionbody = null;
		try{
			Statement stmt = JDBCConnection.connection.createStatement();
			String sql = "SELECT body FROM optionbody WHERE id='" + this.optionid +"'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			//valid = rs.next();
			while(rs.next()){
				optionbody = (String)rs.getString("body");
				break;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return optionbody;
	}
	
}
