package com.crackers.app.dao.implement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.crackers.app.dao.LoginDao;
import com.crackers.app.dao.rowmapper.LoginDaoRowMapper;
import com.crackers.app.model.Login;

@Repository
public class LoginDaoImpl implements LoginDao
{
	@Autowired
	JdbcTemplate jdbcTemplate;
	@Autowired
	LoginDaoRowMapper rowmapper;
	public JdbcTemplate getJdbcTemplate() 
	{
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) 
	{
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public List<Login>findUserById(String id) 
	{
		String sql = "select name,emailid, password from users where emailid = ?";
		List<Login> log = jdbcTemplate.query(sql,rowmapper, id);
		return log;
	}
		
	public int saveSignUpDetails(String name,String emailid, String password) 
	{
		String sql = "insert into users (name,emailid, password) values (?,?,?)";
		int result = jdbcTemplate.update(sql, name,emailid, password);
		return result;
	}
}

