package com.crackers.app.dao;

import java.util.List;
import com.crackers.app.model.Login;

public interface LoginDao 
{
	 public List<Login> findUserById(String emailId);

	 public int saveSignUpDetails(String name,String emailid, String password);
}
