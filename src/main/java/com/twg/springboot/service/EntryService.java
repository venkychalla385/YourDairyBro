package com.twg.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.twg.springboot.entity.Entry;

@Service
public interface EntryService {
         
	public Entry saveEntry(Entry entry);
	public Entry updateEntry(Entry entry);
	public void deleteEntry(Entry entry);
	public List<Entry> findAll();
	public List<Entry> findByUserid(int userid);
	public Entry findById(int id);
	
}
