package com.spr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spr.dao.UserDaoImple;
import com.spr.dto.User;

@Service
public class UserServiceImple implements UserService{

	@Autowired
	private UserDaoImple userDaoImple;

	@Override
	public void insert(User user) {
		System.out.println("Patient services..........");
		userDaoImple.insert(user);
		
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userDaoImple.update(user);
	}

	@Override
	public List<User> selectAllUser() {
		List<User> li=userDaoImple.selectAllUser();
		return li;
	}

	@Override
	public User selectbyId(int UserId) {
		return userDaoImple.selectbyId(UserId);
	}

	@Override
	public void delete(int id) {
		
		userDaoImple.delete(id);
	}

	
	
	

}
