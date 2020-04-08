package com.shop.service;

import java.util.List;

import com.shop.model.User;

public interface UserService {
	public boolean addUser(User user);
	public boolean deleteUser(int userid);
	public boolean updateUser(User user);
	public List<User> displayUsers();
	public User displayUserByUsername(String username);
}
