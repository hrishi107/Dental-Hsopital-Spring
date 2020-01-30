package com.spr.service;


import java.util.List;

import com.spr.dto.User;

public interface UserService {
	public void insert(User user);
	public void update(User user);
	public List<User> selectAllUser();
	public User selectbyId(int UserId);
	public void delete(int id);
}
