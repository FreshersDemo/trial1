package com.crackers.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.crackers.app.dao.LoginDao;
import com.crackers.app.model.login;


@Controller
@SessionAttributes("emailid")
public class UserLoginController {
	
	@Autowired
	LoginDao loginDao;
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public String getLogin(ModelMap model) 
	{
		String emailid="";
		model.put("emailid",emailid);
		return "Login";
	}
	@RequestMapping(value ="/homepage", method = RequestMethod.GET)
	public String gethomepage() 
	{
		return "homepage";
	}
	@RequestMapping(value ="/homepage", method = RequestMethod.POST)
	public String getRequest(@RequestParam String emailid, @RequestParam String password, ModelMap model) 
	{
		List<login> log = loginDao.findUserById(emailid);
		model.put("emailid", emailid);
		if(!(log.isEmpty()))
		{
			for(login temp:log)
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
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String showSignupPage(login log)
	{
		return "Register";
	}
	@RequestMapping(value ="/register", method = RequestMethod.POST)
	public String postRequest(@RequestParam String name, @RequestParam String emailid, @RequestParam String password, ModelMap model)
	{
			List<login> log=loginDao.findUserById(emailid);
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