package com.crackers.app.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.crackers.app.model.Cart;

@Component
public interface CartDao
{
	int save(int id,int quantity,String emailid);
	int delete(int id);
	
	List<Cart> getCartItems(String emailid);
	void truncate(String emailid);
}