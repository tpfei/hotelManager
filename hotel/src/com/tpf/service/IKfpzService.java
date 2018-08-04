package com.tpf.service;

import java.util.List;

import com.tpf.entity.Kfpz;

public interface IKfpzService {
	// 跟我们的dao层一样
	public List<Kfpz> findAll();

	public boolean save(Kfpz d);

	public boolean delete(int id);

	public boolean update(Kfpz d);

	public Kfpz findById(int id);
}