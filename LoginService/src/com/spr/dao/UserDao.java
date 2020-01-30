package com.spr.dao;

import java.util.List;

import com.spr.dto.User;

public interface UserDao {
	public Boolean insert(User user);
	public int update(User user );
	
	public Boolean delete(int id);
	
	public List<User> selectAllUser();
	public User selectbyId(int UserId);
}
