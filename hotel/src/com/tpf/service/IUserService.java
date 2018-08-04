package com.tpf.service;

import java.util.List;

import com.tpf.entity.User;

public interface IUserService {
	// 跟我们的dao层一样
	public List<User> findAll();

	public boolean save(User d);

	public boolean delete(int id);

	public boolean update(User d);

	public User findById(int id);

	public User login() throws Exception;
}