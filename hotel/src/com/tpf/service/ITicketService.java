package com.tpf.service;

import java.util.List;
import com.tpf.entity.Ticket;

public interface ITicketService {
	
	public List<Ticket> findAll();
	
	public List<Ticket> findByUser();

	public boolean save(Ticket d);

	public boolean delete(int id);

	public boolean update(Ticket d);

	public Ticket findById(int id);
}
