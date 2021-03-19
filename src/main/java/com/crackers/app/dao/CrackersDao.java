package com.crackers.app.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.crackers.app.model.Crackers;

@Component
public interface CrackersDao
{	
	List<Crackers> getMenuItemsCustomer(String category);
	List<Crackers> getSortItems(String category);
	List<Crackers> getSortItems1(String category);
}
