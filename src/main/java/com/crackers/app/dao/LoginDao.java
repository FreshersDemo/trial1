package com.crackers.app.dao;



import java.util.List;

import com.crackers.app.model.login;

public interface LoginDao 
{
	 public List<login> findUserById(String emailId);

	 public int saveSignUpDetails(String name,String emailid, String password);
}
