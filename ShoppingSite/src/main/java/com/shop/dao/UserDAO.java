package com.shop.dao;

import java.util.List;
import com.shop.model.User;

public interface UserDAO {
	public boolean addUser(User user);
	public boolean deleteUser(int userid);
	public boolean updateUser(User user);
	public List<User> displayUsers();
	public User displayUserByName(String username);
}
