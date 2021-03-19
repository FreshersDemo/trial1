package com.crackers.app.dao.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.crackers.app.dao.CrackersDao;
import com.crackers.app.dao.rowmapper.CrackersDaoRowMapper;
import com.crackers.app.model.Crackers;

@Repository
public class CrackerDaoImpl implements CrackersDao 
{

	@Autowired
	JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() 
	{
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) 
	{
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<Crackers> getMenuItemsCustomer(String category) 
	{
		String sql = "select * from crackers where crackerscategory=?";
		CrackersDaoRowMapper rowmapper = new CrackersDaoRowMapper();
		List<Crackers> crackersItemsCustomer = jdbcTemplate.query(sql, rowmapper,category);
		return crackersItemsCustomer;
	}
	
	@Override
	public List<Crackers> getSortItems(String category)
	{
		String sql="select*from crackers where crackerscategory=? ORDER BY crackersprice asc ";
		CrackersDaoRowMapper rowmapper=new CrackersDaoRowMapper();
		List<Crackers> crackersSort1=jdbcTemplate.query(sql,rowmapper,category);
		return crackersSort1;
	}
	
	@Override
	public List<Crackers> getSortItems1(String category)
	{
		String sql="select*from crackers where crackerscategory=? ORDER BY crackersprice desc ";
		CrackersDaoRowMapper rowmapper=new CrackersDaoRowMapper();
		List<Crackers> crackersSort2=jdbcTemplate.query(sql,rowmapper,category);
		return crackersSort2;
	}
}