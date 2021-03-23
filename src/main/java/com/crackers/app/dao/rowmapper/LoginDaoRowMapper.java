package com.crackers.app.dao.rowmapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import com.crackers.app.model.Login;

@Component
public class LoginDaoRowMapper implements RowMapper<Login> 
{
	@Override
	public Login mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		Login log = new Login();
		log.setName(rs.getString(1));
		log.setEmailid(rs.getString(2));
		log.setPassword(rs.getString(3));
		return log;
	}

}
