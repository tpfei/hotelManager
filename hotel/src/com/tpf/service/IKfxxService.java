package com.tpf.service;

import java.util.List;

import com.tpf.entity.Kfxx;

public interface IKfxxService {
	// 跟我们的dao层一样
	public List<Kfxx> findAll();

	public boolean save(Kfxx k);

	public boolean delete(int id);
	
	public boolean deletes(int[] szid);

	public boolean update(Kfxx k);

	public Kfxx findById(int id);
}
