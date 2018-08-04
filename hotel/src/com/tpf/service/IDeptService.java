package com.tpf.service;

import java.util.List;

import com.tpf.entity.Dept;

public interface IDeptService {
	// 跟我们的dao层一样
	public List<Dept> findAll();

	public boolean save(Dept d);

	public boolean delete(int id);

	public boolean update(Dept d);

	public Dept findById(int id);
}