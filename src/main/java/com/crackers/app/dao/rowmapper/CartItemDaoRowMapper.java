package com.crackers.app.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.crackers.app.model.Cart;

public class CartItemDaoRowMapper implements RowMapper<Cart> 
{

	
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		Cart Cart1 = new Cart();
		Cart1.setCartCrackersId(rs.getInt(1));
		Cart1.setCartEmailid(rs.getString(2));
		Cart1.setCartCrackersName(rs.getString(3));
		Cart1.setCartCrackersCategory(rs.getString(4));
		Cart1.setCartCrackersPrice(rs.getDouble(5));
		Cart1.setCartQuantity(rs.getInt(6));
		return Cart1;
	}
}

