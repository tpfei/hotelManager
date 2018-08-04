package com.tpf.service;

import java.util.List;

import com.tpf.entity.Admin;

public interface IAdminService {
	// 跟我们的dao层一样
	public Admin login() throws Exception;

	public List<Admin> findAll();

	public boolean save(Admin d);

	public boolean update(Admin d);

	public Admin findById(int id);
}
