package com.jenish.studentinfosystem.service;

import java.util.List;

import com.jenish.studentinfosystem.model.User;

public interface UserService {

	public void saveUserInfo(User user);

	public void deleteUserInfo(int id);

	public List<User> getAllUserInfo();

	public User getUserInfoById(int id);

	public int loginValidation(String userName, String password);
}
