package com.crackers.app.dao.implement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.crackers.app.dao.CartDao;
import com.crackers.app.dao.rowmapper.CartItemDaoRowMapper;
import com.crackers.app.dao.rowmapper.CrackersDaoRowMapper;
import com.crackers.app.model.Cart;
import com.crackers.app.model.Crackers;

@Repository
public class CartDaoImpl implements CartDao 
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
	public int save(int id,int quantity,String emailid) 
	{
		String queryCrackers = "select * from crackers where crackersid=?";
		CrackersDaoRowMapper rowMapper = new CrackersDaoRowMapper();
		Crackers crackers = jdbcTemplate.queryForObject(queryCrackers, rowMapper, id);
		double totalPrice=crackers.getCrackersPrice()*quantity; 
		String saveCartItem = "insert into cart (cartemailid,cartcrackersname, cartcrackerscategory,cartcrackersprice,cartQuantity) values (?,?,?,?,?);";
		int result = jdbcTemplate.update(saveCartItem,emailid, crackers.getCrackersName(),crackers.getCrackersCategory(),totalPrice,quantity);
		return result;
	}

	@Override
	public List<Cart> getCartItems(String emailid) 
	{
		String queryCart = "select * from cart where cartemailid=?";
		CartItemDaoRowMapper rowMapper = new CartItemDaoRowMapper();
		List<Cart> cartItems = jdbcTemplate.query(queryCart, rowMapper,emailid);
		return cartItems;
	}
		
	@Override
	public int delete(int id) 
	{
		String query = "delete from cart where cartCrackersid=?";
		int result = jdbcTemplate.update(query, id);
		return result;
	}
	
	@Override
	public void truncate(String emailid)
	{
		String query="delete from cart where cartemailid=?";
		jdbcTemplate.update(query,emailid);
	}
}