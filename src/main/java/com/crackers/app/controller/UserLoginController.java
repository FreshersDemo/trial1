package com.crackers.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.crackers.app.dao.LoginDao;
import com.crackers.app.model.Login;


@Controller
@SessionAttributes("emailid")
public class UserLoginController {
	
	@Autowired
	LoginDao loginDao;
	
	@GetMapping(value ="/login")
	public String getLogin(ModelMap model) 
	{
		String emailid="";
		model.put("emailid",emailid);
		return "Login";
	}
	@GetMapping(value ="/homepage")
	public String gethomepage() 
	{
		return "homepage";
	}
	@PostMapping(value ="/homepage")
	public String getRequest(@RequestParam String emailid, @RequestParam String password, ModelMap model) 
	{
		List<Login> log = loginDao.findUserById(emailid);
		model.put("emailid", emailid);
		if(!(log.isEmpty()))
		{
			for(Login temp:log)
			{
				if(temp.getEmailid().equals(emailid)&& temp.getPassword().equals(password)) 
				{
					return "homepage";
				}
				else
				{
					String message="Invalid Login Credentials !";
					model.put("message",message);
					return "Login";
				}
			}
		}
		else
		{
			String message="Invalid Login Credentials !";
			model.put("message",message);
			return "Login";
		}
		return null;
	}
	
	@GetMapping(value="/register")
	public String showSignupPage(Login log)
	{
		return "Register";
	}
	@PostMapping(value ="/register")
	public String postRequest(@RequestParam String name, @RequestParam String emailid, @RequestParam String password, ModelMap model)
	{
			List<Login> log=loginDao.findUserById(emailid);
			if(log.isEmpty())
			{
				int result =loginDao.saveSignUpDetails(name,emailid, password);
				model.put("emailid", emailid);
				if(result == 1) 
				{
					return "homepage";
				}
			}
			else
			{
				model.put("message1", "Existing User !");
				return "Register";
			}
		return null;
	}
}