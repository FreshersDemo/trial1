package com.crackers.app.dao.rowmapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.crackers.app.model.Crackers;

public class CrackersDaoRowMapper implements RowMapper<Crackers> 
{
	@Override
	public Crackers mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Crackers crackers = new Crackers();
		crackers.setCrackersId(rs.getInt(1));
		crackers.setCrackersName(rs.getString(2));
		crackers.setCrackersCategory(rs.getString(3));
		crackers.setCrackersPrice(rs.getDouble(4));
		return crackers;
	}
}

