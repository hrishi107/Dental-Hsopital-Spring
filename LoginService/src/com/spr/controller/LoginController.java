package com.spr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spr.dto.Login;
import com.spr.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginservice;
	
	
	public void setLoginservice(LoginService loginservice) {
		this.loginservice = loginservice;
	}
	
	
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/Index", method = RequestMethod.POST)
	public ModelAndView userLogin() {

		ModelAndView mv = new ModelAndView();
			mv.setViewName("Index");
		
		return mv;

	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView();
		try {
			if(session.getAttribute("UserName")!=null)
			{
				mv.setViewName("Home");
				return mv;
			}
			else {
				mv.setViewName("Index");
				return mv;
			}
			
		}
		catch(Exception e)
		{
			mv.setViewName("Index");
			return mv;
		}
	}

@RequestMapping(value="/login",method=RequestMethod.POST)
public ModelAndView login(@RequestParam("UserName") String userName,@RequestParam("Password") String password) {
	ModelAndView mv=new ModelAndView();
	Login login=new Login();
	login.setEmail(userName);
	login.setPassword(password);
	try {
		Login log1=loginservice.validateUser(login);
		System.out.println(log1);
		if(log1.getUserType().equals("A"))
		{
			session.setAttribute("Email", userName);
			mv.addObject("Email", userName);
			mv.setViewName("HomepageAdmin");
		}
		
		else if(log1.getUserType().equals("P"))
		{
			session.setAttribute("Email", userName);
			mv.addObject("Email", userName);
			mv.setViewName("HomepagePatient");
		}
		else if(log1.getUserType().equals("D"))
		{
			session.setAttribute("Email", userName);
			mv.addObject("Email", userName);
			mv.setViewName("HomepageDoctor");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		mv.setViewName("Index");
	}
	return mv;
}


@RequestMapping(value="Logout",method=RequestMethod.GET)
public ModelAndView LogOut() {
	ModelAndView mv=new ModelAndView();
	session.removeAttribute("Email");
	session.invalidate();
	mv.setViewName("Index");
	return mv;
}
}


