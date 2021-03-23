package com.crackers.app.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.crackers.app.model.Cart;

public class CartItemDaoRowMapper implements RowMapper<Cart> 
{

	
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		Cart cart1 = new Cart();
		cart1.setCartCrackersId(rs.getInt(1));
		cart1.setCartEmailid(rs.getString(2));
		cart1.setCartCrackersName(rs.getString(3));
		cart1.setCartCrackersCategory(rs.getString(4));
		cart1.setCartCrackersPrice(rs.getDouble(5));
		cart1.setCartQuantity(rs.getInt(6));
		return cart1;
	}
}

