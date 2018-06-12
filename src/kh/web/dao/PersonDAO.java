package kh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kh.web.dto.PersonDTO;

public class PersonDAO {
	private Connection createConnection() throws Exception{
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbId = "kh";
	String dbPw = "kh";

	Connection con = DriverManager.getConnection(url,dbId,dbPw);

	return con;
	}
	
	public List<PersonDTO> getAllData() throws Exception{
		Connection con = this.createConnection();
		
		String sql = "select * from person";
		
		PreparedStatement pstat = con.prepareStatement(sql);
		
		ResultSet result = pstat.executeQuery();
		List<PersonDTO> list = new ArrayList<>();
		
		while(result.next()) {
			PersonDTO dto = new PersonDTO();
			
			dto.setSeq(result.getString(1));
			dto.setName(result.getString(2));
			dto.setPhone(result.getString(3));
			dto.setEmail(result.getString(4));
			
			list.add(dto);
		}
		
		pstat.close();
		con.close();
		
		return list;
	}
}
