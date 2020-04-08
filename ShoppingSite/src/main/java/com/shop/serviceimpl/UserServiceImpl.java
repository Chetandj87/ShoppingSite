package com.shop.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.shop.dao.UserDAO;
import com.shop.model.User;
import com.shop.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;
	
	public boolean addUser(User user) {
		user.setAuthority("user");
		user.setStatus(true);
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		userDAO.addUser(user);
		return true;
	}

	public boolean deleteUser(int userid) {
		userDAO.deleteUser(userid);
		return true;
	}

	public boolean updateUser(User user) {
		userDAO.updateUser(user);
		return true;
	}

	public List<User> displayUsers() {
		return userDAO.displayUsers();
	}

	public User displayUserByUsername(String username) {
		return userDAO.displayUserByName(username);
	}

}
