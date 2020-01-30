package com.spr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spr.dto.User;
import com.spr.service.UserServiceImple;
@Controller
public class UserController {
	
	@Autowired
	private UserServiceImple userService;
	

	public void setUserService(UserServiceImple userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value = "UserList",method = RequestMethod.GET)
	public ModelAndView selectAllUser() {
		ModelAndView mv=new ModelAndView();
		List<User> user=userService.selectAllUser();
		System.out.println(user);
		mv.addObject("user", user);
		
		mv.setViewName("UserList");
		return mv;
		
	}
	
	/*@RequestMapping("/edit")
	public ModelAndView editUserForm(@RequestParam int UserId) {
	    ModelAndView mav = new ModelAndView("edit");
	    User user = userService.selectbyId(UserId);
	    mav.addObject("fcFacility", fcFacility);
	    
	    mav.setViewName("editFacility");
	    
	    System.out.println("ëditttt");
	    return mav;
	}*/
	

	@RequestMapping(value="/regisp",method=RequestMethod.POST)
	public String insert(@ModelAttribute("user")User user,ModelMap model) {
		
		
		System.out.println("hey"+user);
		userService.insert(user);
		try {
			
			
			System.out.println("success");
			return "Index";
			
		}catch(Exception e){
			System.out.println("Fail");
			return "Register";
		}
	}

	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(@RequestParam("userId") int UserId) {
		
		
		
		userService.delete(UserId);
		try {
			
			
			System.out.println("success");
			return "HomepageAdmin";
			
		}catch(Exception e){
			System.out.println("Fail");
			return "Register";
		}
	}
}
