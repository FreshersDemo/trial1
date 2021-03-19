package com.crackers.app.dao.rowmapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.crackers.app.model.login;

@Component
public class LoginDaoRowMapper implements RowMapper<login> 
{
	@Override
	public login mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		login log = new login();
		log.setName(rs.getString(1));
		log.setEmailid(rs.getString(2));
		log.setPassword(rs.getString(3));
		return log;
	}

}
